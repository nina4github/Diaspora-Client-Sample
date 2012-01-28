class Apiv1::AspectsController < Apiv1::BaseController
  
    # GET a list of all aspects for a user
    def index
        output(forward('get','/apiv1/aspects'))
    end
    
    # GET all posts within a specific aspect for the current user
    def posts
        output(forward('get',"/apiv1/aspects/#{params[:id]}/posts"))
    end
    
    # GET all posts within a specific aspect for the current user
    def contacts
        output(forward('get',"/apiv1/aspects/contacts/#{params[:id]}"))
    end
end