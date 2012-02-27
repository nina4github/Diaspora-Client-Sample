class Apiv1Controller < ActionController::Base
    require 'net/http'
    require 'uri'
    
    def profiles
        output(query('get', request.url))
    end
    
    def aspects
        output(query('get',request.url))
    end
    
    #create an asymmetric aspect
    def newaspect
        #create an aspect
        query('post',request.url, params)
        #add contacts
        results=query('get','http://idea.itu.dk/apiv1/contacts?aspect='+params[:aspectname]+'&username='+params[:objectname]);
        contacts=ActiveSupport::JSON.decode(results)["contacts"];
        output(contacts)
    end
    
    def stream
    end
    
    
    #following are helper methods
    private
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
            request.set_form_data(params)
        end
        return http.request(request).body
    end
end