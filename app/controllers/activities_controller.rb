class ActivitiesController < ActionController::Base
  #require 'carrierwave/orm/activerecord'
  before_filter :authenticate
 
 # GET activities
 #
 # GET the list of activities of a user
 # translated into
 # GET all aspects list for a user
 
  def index
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects'))
    @activities = @response
    respond_to do |format|
      format.html
      format.json {render :json=> @response, :callback=>params[:callback]}
    end
  end
  
 
  
  def contacts
    @data1 = params[:id]
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/contacts'))
    
    respond_to do |format|
        format.html 
        format.json {render :json=> @response, :callback=>params[:callback]} #render json: @response}
    end
  
  end
  
  # GET activities/:id reply to 
  #
  # GET all the posts of the users included in this activity and all the posts that the current user has shared under this activity
  # GET all the posts of this aspect: from the people that I added to this aspect and from myself (what I shared under this aspect)
  # problem :: I receive all the messages from my friends, not just the ones related to xxx
  # solution :: we use the TAG #xxx to filter on the posts that are tagged with xx
  #                  
   
  #GET activities/:id
  def show
    @data1 = params[:id] # id is the NAME of the activity/aspect not the ID
    page = params[:page] ?  params[:page] : 1 # to allow for multiple page retrieval
    @response = Hash.new
    
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]))
   
    
    #TODO _> query last how to verify that the content is tagged accordingly
    
     respond_to do |format|
        format.html {render "stream"}
        format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
      end
  end
  
  
  def last
    @data1 = params[:id] # id is the NAME of the activity/aspect not the ID
    page = params[:page] ?  params[:page] : 1 # to allow for multiple page retrieval
    @response = Hash.new
    
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/last'))
   
    
    #TODO _> query last how to verify that the content is tagged accordingly
    
     respond_to do |format|
        format.html {render "stream"}
        format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
      end
  end
  
  
  def week 
    @data1 = params[:id] # id is the NAME of the activity/aspect not the ID
    page = params[:page] ?  params[:page] : 1 # to allow for multiple page retrieval
    @response = Hash.new
    
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/week'))
   
    
    #TODO _> query last how to verify that the content is tagged accordingly
    
     respond_to do |format|
        format.html {render "stream"}
        format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
      end
  end
  
  def today 
    @data1 = params[:id] # id is the NAME of the activity/aspect not the ID
    @response = Hash.new
    
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/today'))
    
     respond_to do |format|
        format.html {render "stream"}
        format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
      end
  end
  
  
  # TOREVIEW, the most updated is in GENIEHUB_controller/listen
  # POST activities/:id id is the activity name
  def new
    # call to create will generate a new post with these information and on this aspect
    text=params[:text]
    logger.info('activities_controller.new [text] '+text)
    # OLD # message = {'status_message'=>{'text'=>text},'aspect_name' => params[:id]}
    # OLD # @response =JSON.parse(current_user.access_token.token.post('/api/v0/posts/new', message))
    if (text.include?(" enter ") || text.include?(" leave "))
      user = text.split[0] # split already separates using spaces between words
      domain = "@idea.itu.dk:3000"
      mention = "@{"+user+"; "+user+domain+"}" 
      text_el = text.split
      msg = mention + " "+ text_el[1]+" "+text_el[2]
    else
      msg=text
    end 
    message = {'status_message'=>{'text'=>msg},'aspect_name' => params[:id],'tag'=> params[:id]}
    @response =JSON.parse(current_user.access_token.token.post('/api/v0/create', message))
    


    # Generate a post on the genie hub
    # POST http://tiger.itu.dk:8004/informationbus/publish
    # (form encoded)
    # event=<event>
    getConn
    event = {"activity"=>params[:id],"actor"=>current_user.diaspora_id.split('@')[0],"content"=>text,"timestamp"=>"","generator"=>"server"}.to_json
    @gh_respons = @conn.post '/informationbus/publish', {:event=>event}
    
    @status_message = @response
    respond_to do |format|
        format.html
        format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
    end
    
  end
  
  
  ## GET profiles/:id
  # retrieve profile information about a specific user defined by a person id 
  # in our world also objects will have this person information set
  def profiles 
      personid = params[:id]
      @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/profiles?ids=['+params[:id]+']'))
      respond_to do |format|
        format.html
        format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
      end
  end
    
  def me
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/profile'))
    respond_to do |format|
      format.html 
      format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
    end
  end
    
  # POST  
  def group

    @activity = params[:activity]
    @users = params[:users]
    #message = {'activity'=>'billiard', 'users'=>'[12,14,15,16,17]'}
    message = {'activity'=>@activity, 'users'=>@users}
    @response = JSON.parse(current_user.access_token.token.post('/api/v0/group', message))
      respond_to do |format|
        format.html {render 'group'}
        format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
      end
    end  
   
  def delete
    render 'delete'
  end  
  
  
 def upload
   activity = params[:id]
   #file = file_handler(params)
   q = "original_filename=#{CGI::escape(params[:original_filename])}"
   logger.info("query string for upload: #{q}")

   att_content_type = (request.content_type.to_s == "") ? "application/octet-stream" : request.content_type.to_s

   @response = current_user.access_token.token.post('/api/v0/aspects/'+activity+'/upload?'+q, 
    request.raw_post.force_encoding('BINARY'), 
    {'Content-Type' => att_content_type})
    reply = JSON.parse(@response)
   logger.info("response from Diaspora: #{reply}")
   
   photo = reply["data"]["photo"]
   logger.info("photo from Diaspora: #{reply.data}")
   photo_id = photo["id"]
   photo_url = photo["remote_photo_path"] + photo["remote_photo_name"]
   
   
   # Generate a post on the genie hub to notify the new CONTENT
   # POST http://tiger.itu.dk:8004/informationbus/publish
   # (form encoded)
   # event=<event>
   getConn
   text = "spark:photo:"+photo_url+" #"+activity
   event = {"activity"=>params[:id],"actor"=>current_user.diaspora_id.split('@')[0],"content"=>text,"timestamp"=>"","generator"=>"server"}.to_json
   @gh_respons = @conn.post '/informationbus/publish', {:event=>event}
   logger.info("I have published the info on gh user = "+current_user.diaspora_id.split('@')[0] + " response "+ @gh_respons.status.to_s());
   
   respond_to do |format|
       #format.html {render @response}
       format.json {render :json=> @response, :callback=>params[:callback]}#{render json: @response}
     end

   return
 end
  
  # def tags
   #     @response = JSON.parse(current_user.access_token.token.get('/api/v0/tags/'+params[:activityname]+'?only_posts=true&max_time='+(Time.now).to_i.to_s+"&page=1"))
   #     respond_to do |format|
   #         format.html 
   #         format.json {render json: @response}
   #     end
   #   end
  
  # before filter method to check on the identity of the user. So far it is very bad and no password is provided 
  # BUT 
  # we need some proper authentication methods
  # it was suggested to use NFC with a private key as a signature for the objects. In the case of tablets it can be the user signature
  #
  private
  def authenticate
    case request.format
    when Mime::XML, Mime::JSON, Mime::HTML #authentication only applies for these types of requests
       if (params[:user]!=nil )
         user = User.find_by_diaspora_id(params[:user])  
         if(user!=nil)
           request.env["warden"].set_user(user, :scope => :user, :store => false)
           @answer =  current_user.access_token
           return true
          else
           #@answer = '401 Unauthorized - This user is not registered, please register it first on your Diaspora Client service'
           render :file => "#{Rails.root}/public/401.html", :status => 401, :layout => false and return false
          end
      else
         #@answer='400 Bad Request - You need to send the user name with the domain of diaspora'
         # render :file => "#{Rails.root}/public/400.html", :status => 404, :layout => false and return false
         #raise ActionController::RoutingError.new('Not Found')
         user = User.find_by_diaspora_id("place01@idea.itu.dk:3000")
         request.env["warden"].set_user(user, :scope => :user, :store => false)
         @answer =  current_user.access_token
        
         
      end
      # respond_to do |format|
      #                format.xml {render xml: @answer}
      #                format.json {render json: @answer}
      #              end
      
    # else
    #       redirect_to("#{Rails.root}") and return false
    end
    
  end
  
  
  def getConn
    @conn = Faraday.new(:url => 'http://idea.itu.dk:8000') do |builder|
      builder.request  :url_encoded
      builder.response :logger
      builder.adapter  :net_http
    end
  end
  
  
end