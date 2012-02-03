class Apiv1::BaseController < ActionController::Base
    require 'net/http'
    require 'uri'
      
    def output(result)
        respond_to do |format|
            format.html {render result }
            format.json {render :json => result}
        end
    end
    
    def forward(method, url, params=nil)
        @uri=URI.parse(url)
        http = Net::HTTP.new(@uri.host, 3000)
        #include the username query
        query=@uri.query;
        path= query.nil? ? @uri.path : @uri.path+@uri.query;
        request=case method.downcase
            when 'get' then
                Net::HTTP::Get.new(path)
            when 'post' then
                Net::HTTP::Post.new(path)
            when 'put' then
                Net::HTTP::Put.new(path)
            when 'delete' then
                Net::HTTP::Delete.new(path)
        end
<<<<<<< HEAD
	if !params.nil?
		request.set_form_data(params)
	end
=======
        if !params.nil?
            request.set_form_data(params)
        end
>>>>>>> 6bc5fc5e9025a49351a8d13f896f47410941752f
        return http.request(request).body
    end
end
