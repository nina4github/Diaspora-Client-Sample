class Apiv1::ProfilesController < Apiv1::BaseController

    #get a users' profile
    def show
        output(query('get', request.url))
    end   
end
