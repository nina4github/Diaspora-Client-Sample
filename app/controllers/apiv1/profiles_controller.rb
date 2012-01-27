class Apiv1::ProfilesController < Apiv1::BaseController
  
    #get a users' profile
    def show
         @result = JSON.parse(current_user.access_token.token.get("/api/v1/profile"))
         output(@result)
    end
    
end