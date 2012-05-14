class Apiv1::AspectsController < Apiv1::BaseController
	
    def index
        @aspects = Aspect.all
		render :json=> @aspects
    end
  
    def show
        result=ActiveSupport::JSON.decode(query('get',request.url))
        if !result["name"].nil?
			aspect=Aspect.find_by_name(result["name"])
			render :json=>{	:name=> result["name"],
                        :id=> result["id"],
                        :userId=> result["user_id"],
                        :feedId=> aspect.feedId.to_i
				}
    		else
    			render :json=>result
    		end
    end
    
    def create
        results=ActiveSupport::JSON.decode(query('post',request.url, params))
  
        aspect=Aspect.find_by_name(params[:aspectname])
        if aspect.nil?
            params[:aspect]={:name=>params[:aspectname],:creator=>params[:username], :feedId=>params.has_key?("feedId")? params[:feedId]: 0}
            @newaspect = Aspect.new(params[:aspect])
            @newaspect.save
        end
        render :json=>{:id=>results["id"], :status=>200}
    end
	
  	def destroy
  		@aspect = Aspect.find(params[:id])
  		@aspect.destroy
  	end
	
	def delete
		@aspect = Aspect.find(params[:id])
  		@aspect.destroy
	end
	
    #add a aspect to the current user
    def add
		render :json=>params
        
    end
end