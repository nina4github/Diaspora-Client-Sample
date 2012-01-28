class Apiv1::ProfilesController < Apiv1::BaseController
  
    #get a users' profile
    def show
      output(forward('get', request.url))
    end
    
    #create a new profile
    def new
        user={'username'              => params[:username],
              'email'                 => params[:email],
              'password'              => params[:password],
              'password_confirmation' => params[:password_confirmation]
        }
        forward('post','/apiv1/profiles/new',user)
        output(@result)
    end

end