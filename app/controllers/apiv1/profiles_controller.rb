class Apiv1::ProfilesController < Apiv1::BaseController
  
    #get a users' profile
    def show
         output(forward("/apiv1/profiles/#{params[:id]}/show",'get'))
    end
    
    #create a new profile
    def new
        user={'username'              => params[:username],
              'email'                 => params[:email],
              'password'              => params[:password],
              'password_confirmation' => params[:password_confirmation]
        }
        @result =JSON.parse(current_user.access_token.token.post('/apiv1/profiles/new',user))
        output(@result)
    end
    
end