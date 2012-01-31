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
        @uri=URI.parse(path)
        @uri.port=3000
        method= method.downcase
        if method== 'get'
           return Net::HTTP.get_response(@uri).body
        elsif method == 'post'
           return Net::HTTP.post_form(@uri, params)
        elsif method == 'put'
           #return JSON.parse(current_user.access_token.token.put(path,params))
        elsif method == 'delete'
           
        end 
    end
end