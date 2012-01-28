class Apiv1::BaseController < ActionController::Base
    require 'net/http'
    require 'uri'
      
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
           return Net::HTTP.get_response(path).body
        end 
    end
end