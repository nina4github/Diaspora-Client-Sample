class Apiv1::BaseController < ActionController::Base
    #before_filter :authenticate
    require 'net/http'
    require 'uri'
    @uri = URI.parse("http://idea.itu.dk")
    @uri.port = 3000  
    
    def output(result)
        respond_to do |format|
            format.html {render result }
            format.json {render :json => result}
        end
    end
    
    def forward(method, path, params=nil)
        method= method.downcase
        if method== 'delete'
           return JSON.parse(current_user.access_token.token.delete(path)) 
        elsif method == 'post'
           return Net::HTTP.post_form(path, params).body
        elsif method == 'put'
           return JSON.parse(current_user.access_token.token.put(path,params))
        else
           @uri.query = URI.encode_www_form(params)
           return Net::HTTP.get_response(path).body
        end 
    end
    
    def authenticate
        case request.format
        when Mime::XML, Mime::JSON #authentication only applies for these types of requests
            if (params[:user]!=nil )
               user = User.find_by_diaspora_id("#{params[:user]}@idea.itu.dk:3000")  
               if(user!=nil)
                   request.env["warden"].set_user(user, :scope => :user, :store => false)
                   @answer =  current_user.access_token
                   return true
                else
                   @answer = '401 Unauthorized - This user is not registered, please register it first on your Diaspora Client service'
                   render :file => "#{Rails.root}/public/401.html", :status => 401, :layout => false and return false
                end
            else
                @answer='400 Bad Request - You need to send the user name with the domain of diaspora'
                render :file => "#{Rails.root}/public/400.html", :status => 404, :layout => false and return false
            end
            output(@answer)
            
            # else
            #       redirect_to("#{Rails.root}") and return false
        end
    end
end