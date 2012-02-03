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
        http = Net::HTTP.new($uri.host,3000)

        request=case method.downcase
            when 'get' then
                Net::HTTP::Get.new(path)
            when 'post' then
                Net::HTTP::post.new(path).set_form_data(params)
            when 'put' then
                Net::HTTP::put.new(path).set_form_data(params)
            when 'delete' then
                Net::HTTP::delete.new(path)
        end
        return http.request(request).body
    end
end