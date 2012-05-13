class Apiv1::ContactsController < Apiv1::BaseController
	
    def all
		output(query('get',request.url))
    end

end