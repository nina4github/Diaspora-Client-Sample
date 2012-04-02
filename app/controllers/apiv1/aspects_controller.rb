class Apiv1::AspectsController < Apiv1::BaseController
	
    def index
        @aspects = Aspect.all
        render :json=>@aspects
    end
  
    def show
        result=ActiveSupport::JSON.decode(query('get',request.url))
        if !result["name"].nil?
        aspect=Aspect.find_by_name(result["name"])
        render :json=>{	:name=> result["name"],
                        :id=> result["id"],
                        :userId=> result["user_id"],
						:feedId=> aspect.feedUrl
				}
    		else
    			render :json=>result
    		end
    end
    
    def create
  		  query('post',request.url, params)
  
        aspect=Aspect.find_by_name(params[:aspectname])
        if aspect.nil?
            params[:aspect]={:name=>params[:aspectname],:creator=>params[:username], :feedUrl=>params.has_key?("feedUrl")? params[:feedUrl]: ' '}
            @newaspect = Aspect.new(params[:aspect])
            @newaspect.save
        end
        render :json=>{"status"=>200}
    end
	
    #add a aspect to the current user
    def add
        #create an aspect
        query('post',request.url, params)
  
        #add contacts
        @uri=URI.parse(request.url)
        @uri.path='/apiv1/contacts'
        @uri.query='aspect='+params[:aspectname]+'&username='+params[:objectname]
        results=ActiveSupport::JSON.decode(query('get', @uri.to_s));
        pids=results["pid"];
        uids=results["uid"];
        #add contacts to user aspect
        @uri.query=nil
        query('post', @uri.to_s, {:ids=>pids, :aspect=>params[:aspectname], :username=>params[:username]} );
        #add contact to other users aspect
        uids.each do |uid|
            query('post', @uri.to_s, {:ids=>params[:userid], :aspect=>params[:aspectname], :userid=>uid} );
        end
        render :json=>{"status"=>200}
    end
end