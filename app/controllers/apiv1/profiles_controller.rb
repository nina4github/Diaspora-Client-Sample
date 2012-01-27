class Apiv1::ProfilesController < Apiv1::BaseController
  
    #get a users' profile
    def show
         @result = JSON.parse(current_user.access_token.token.get("/apiv1/profiles/#{params[:id]}/show"))
         output(@result)
    end
    
end