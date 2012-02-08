class Apiv1::UsersController < Apiv1::BaseController
  
    #create a new user
    def create
        #create a new user
        #forward('post', request.url, params)
		#update profile data
        @uri=URI.parse(request.url)
        @uri.path="/apiv1/profiles/"+params[:username]
		response2=forward('put', @uri.to_s, params)
		mes=ActiveSupport::JSON.decode(response2)
		
		#create an aspect for the object
		@uri.path="/apiv1/aspects/"
		params[:aspect]={'name'=>"sharing"}
		output(forward('post', @uri.to_s, params))
		#add to contact
		if !params[:currentUser].nil?
			#@uri.path="/apiv1/contacts/" + mes["id"].to_s
			#forward('post',@uri.to_s, params)
		end
		#output("User created and "+ response2.to_s) 

    end
    def destroy
        output(forward('delete',request.url))
    end
end
