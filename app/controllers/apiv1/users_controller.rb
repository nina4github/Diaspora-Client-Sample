class Apiv1::UsersController < Apiv1::BaseController
    
    def create
        query('post',request.url, params)
        if(!params[:aspectname].nil?)
            @uri=URI.parse(request.url)
            @uri.path='/apiv1/aspects'
            output(query('post', @uri.to_s , params))
        end
    end

end