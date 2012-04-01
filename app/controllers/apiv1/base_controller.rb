class Apiv1::BaseController <  ActionController::Base
    require 'net/http'
    require 'uri'
    
    #refer to  ttp://blog.assimov.net/post/653645115/post-put-arrays-with-ruby-net-http-set-form-data
    def set_form_data(request, params, sep = '&')
      request.body = params.map {|k,v| 
        if v.instance_of?(Array)
            v.map {|e| "#{urlencode(k.to_s)}[]=#{urlencode(e.to_s)}"}.join(sep)
        else
            "#{urlencode(k.to_s)}=#{urlencode(v.to_s)}"
        end
      }.join(sep)
      request.content_type = 'application/x-www-form-urlencoded'
    end
    
    def urlencode(str)
      str.gsub(/[^a-zA-Z0-9_\.\-]/n) {|s| sprintf('%%%02x', s[0]) }
    end
    
    def output(result)
        respond_to do |format|
            format.html {render result }
            format.json {render :json => result}
        end
    end
    
    def query(method, url, params=nil)
        @uri=URI.parse(url)
        http = Net::HTTP.new(@uri.host, 3000)
        #include the username query
        query=@uri.query;
        path= query.nil? ? @uri.path : @uri.path+'?'+@uri.query;
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
        if !params.nil?
            if @uri.path.include? 'contacts'
                set_form_data(request,params)
            else 
                request.set_form_data(params)
            end
        end
        return http.request(request).body
    end
end