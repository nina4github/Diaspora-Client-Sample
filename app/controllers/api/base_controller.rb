class Api::BaseController < ActionController::Base
    before_filter :authenticate
    
    def output(result)
        respond_to do |format|
            format.html {render result }
            format.json {render :json => result}
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
                #raise ActionController::RoutingError.new('Not Found')
            end
            output(@answer)
            
            # else
            #       redirect_to("#{Rails.root}") and return false
        end
    end
end