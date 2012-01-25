class ActivitiesV1Controller < ActionController::Base
    #require 'carrierwave/orm/activerecord'
    before_filter :authenticate

    #get a users' profile
    def profile
        @result = JSON.parse(current_user.access_token.token.get('/profiles/0'))
        output(@result)
    end

    #get a users' profile
    def testprofile
       @result = JSON.parse(current_user.access_token.token.get('/api/v1/profile'))
       output(@result)
    end
    
    def new_profile
        user={'username'              => params[:username],
              'email'                 => params[:email],
              'password'              => params[:password],
              'password_confirmation' => params[:password_confirmation]
        }
        @result =JSON.parse(current_user.access_token.token.post('/api/v1/profile/new',user))
        output(@result)
    end
    
    # GET a list of all aspects for a user
    def activities
        @result = JSON.parse(current_user.access_token.token.get('/api/v1/aspects'))
        output(@result)
    end

    # GET all posts within a specific aspect for the current user
    def stream
        @result = JSON.parse(current_user.access_token.token.get('/api/v1/aspects/'+params[:name]))
        output(@result)
    end
  
    #get all contacts of an aspect
    def contacts
        @result = JSON.parse(current_user.access_token.token.get('/api/v1/aspects/'+params[:name]+'/contacts'))
        output(@result)
    end 
  
    def newpost
        # call to create will generate a new post with these information and on this aspect
        text=params[:text]
        message = {'status_message'=>{'text'=>text},'aspect_name' => params[:id]}
        @result =JSON.parse(current_user.access_token.token.post('/api/v1/posts/new', message))
        @status_message = @result
        output(@result)
    end
    
    # POST  
    def group
        @activity = params[:activity]
        @users = params[:users]
        #message = {'activity'=>'billiard', 'users'=>'[12,14,15,16,17]'}
        message = {'activity'=>@activity, 'users'=>@users}
        @result = JSON.parse(current_user.access_token.token.post('/api/v1/group', message))
        output(@result)
     end  
       
    
     def upload
         activity = params[:id]
         #file = file_handler(params)
         q = "original_filename=#{CGI::escape(params[:original_filename])}"
         logger.info("query string for upload: #{q}")
         att_content_type = (request.content_type.to_s == "") ? "application/octet-stream" : request.content_type.to_s
         @result = current_user.access_token.token.post('/api/v1/aspects/'+activity+'/upload?'+q, request.raw_post.force_encoding('BINARY'), {'Content-Type' => att_content_type})
         logger.info("response from Diaspora: #{response}")
      
         output(@result)
     end

     def output(result)
        respond_to do |format|
            format.html {render result }
            format.json {render :json => result}
        end
     end
     
     private
     
    def authenticate
        case request.format
        when Mime::XML, Mime::JSON #authentication only applies for these types of requests
            if (params[:user]!=nil )
               user = User.find_by_diaspora_id(params[:user])  
               if(user!=nil)
                   request.env["warden"].set_user(user, :scope => :user, :store => false)
                   @answer =  current_user.access_token
                   return true
                else
                   @answer = '401 Unauthorized - This user is not registered, please register it first on your Diaspora Client service'
                   render :file => "#{Rails.root}/public/401.html", :status => 401, :layout => false and return false
                end
            else
                @answer='400 Bad Request - You need to send the user name with the domain of diaspora'
                render :file => "#{Rails.root}/public/400.html", :status => 404, :layout => false and return false
                #raise ActionController::RoutingError.new('Not Found')
            end
            output(@answer)
            
            # else
            #       redirect_to("#{Rails.root}") and return false
        end
    end
end