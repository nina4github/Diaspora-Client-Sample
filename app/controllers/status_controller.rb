class StatusController < ActionController::Base
    require 'logger'
    require 'faraday-stack'

  def index
     if (params[:username]!=nil )
       
       user = User.find_by_diaspora_id(params[:username])  
       if(user!=nil)
         request.env["warden"].set_user(user, :scope => :user, :store => true)
         @answer =  current_user.access_token
        else
          @answer = 'this user is not registered'
        end
     else
       @answer='no current user'
     end
    
    
  end
  
  def show
    #current_user= @current_user  
    DiasporaClient.setup_faraday
    #@class = current_user.access_token.class.name
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/posts/'))
    lenght = @response['posts'].size
   
   
    @name = current_user.diaspora_id.split('@')[0]
    @response = @response['posts'].last
    @response = @response['status_message']
    
    
    # call to create will generate a new post with these information and on this aspect
    message = {'status_message'=>{'text'=>'this is my first post'},'aspect_name' => 'shopping'}
    @status_message =JSON.parse(current_user.access_token.token.post('/api/v0/create', message))
  
    
   
    #message = {"aspect"=>{"name"=>"gym"}}
    #@newaspect = JSON.parse(current_user.access_token.token.post('/api/v0/newaspect',message))
    
    @aspect = JSON.parse(current_user.access_token.token.get('/api/v0/aspect_posts?aspect_name=shopping'))
    @aspects = JSON.parse(current_user.access_token.token.get('/api/v0/aspects'))
    
    respond_to do |format|
      format.html 
    end
   
  end
      
  
end
