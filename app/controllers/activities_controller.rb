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
      format.json {render json: @response}
    end
  end
  
 
  
  def contacts
    @data1 = params[:id]
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/contacts'))
    
    respond_to do |format|
        format.html 
        format.json {render json: @response}
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
        format.json {render json: @response}
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
        format.json {render json: @response}
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
        format.json {render json: @response}
      end
  end
  
  # TOREVIEW, the most updated is in GENIEHUB_controller/listen
  # POST activities/:id id is the activity name
  def new
    # call to create will generate a new post with these information and on this aspect
    text=params[:text]
    message = {'status_message'=>{'text'=>text},'aspect_name' => params[:id]}
    @response =JSON.parse(current_user.access_token.token.post('/api/v0/posts/new', message))
    @status_message = @response
    respond_to do |format|
        format.html
        format.json {render json: @response}
    end
    
  end
  
  
  ## GET profiles/:id
  # retrieve profile information about a specific user defined by a person id 
  # in our world also objects will have this person information set
  def profiles 
      personid = params[:id]
      @response = JSON.parse(current_user.access_token.token.get('/api/v0/profiles?ids=['+params[:id]+']'))
      respond_to do |format|
        format.html
        format.json {render json: @response}
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
        format.json {render json: @response}
      end
    end  
   
  def delete
    render 'delete'
  end  
  
  
 def upload
   activity = params[:id]
   file = file_handler(params)
   q = "original_filename=#{CGI::escape(params[:original_filename])}"
   logger.info("query string for upload: #{q}")
   body = StringIO.new(open(file.path, "rb") {|io| io.read})
   #request.raw_post.force_encoding('BINARY')
  # logger.info ("request content_length: #{request.content_length}")
   response = current_user.access_token.token.post('/api/v0/aspects/'+activity+'/upload?'+q, body)
   logger.info("response from Diaspora: #{response}")
#   FileUtils.cp file, File.new('public/images/' + params[:original_filename],"wb")
   respond_to do |format|
       format.html {render "true"}
       format.json {render json: true}
     end
     
   # message = {
   #   'original_filename' => params['myfile'].original_filename,
   #   'file' => params['myfile'].tempfile
   # }
   #     body,head = Post.prepare_query(message)
   #     current_user.access_token.token.post('/api/v0/aspects/'+params[:activity]+'/upload', body, head)
   #  
   #     File.open('public/images/' + params['myfile'].original_filename, "wb") do |f|
   #       f.write(params['myfile'].tempfile.read)
   #     end



   return
 end
 
 def file_handler(params)
      ######################## dealing with local files #############
      # get file name
      file_name = params[:original_filename]
      # get file content type
      att_content_type = (request.content_type.to_s == "") ? "application/octet-stream" : request.content_type.to_s
      # create tempora##l file
      begin
        file = Tempfile.new(file_name, {:encoding =>  'BINARY'})
        file.print request.raw_post.force_encoding('BINARY')
      rescue RuntimeError => e
        raise e unless e.message.include?('cannot generate tempfile')
        file = Tempfile.new(file_name) # Ruby 1.8 compatibility
        file.binmode
        file.print request.raw_post
      end
      # put data into this file from raw post request

      # create several required methods for this temporal file
      Tempfile.send(:define_method, "content_type") {return att_content_type}
      Tempfile.send(:define_method, "original_filename") {return file_name}
      file
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
    when Mime::XML, Mime::JSON #authentication only applies for these types of requests
       if (params[:user]!=nil )
         user = User.find_by_diaspora_id(params[:user])  
         if(user!=nil)
           request.env["warden"].set_user(user, :scope => :user, :store => true)
           @answer =  current_user.access_token
           return true
          else
           #@answer = '401 Unauthorized - This user is not registered, please register it first on your Diaspora Client service'
           render :file => "#{Rails.root}/public/401.html", :status => 401, :layout => false and return false
          end
      else
         #@answer='400 Bad Request - You need to send the user name with the domain of diaspora'
         render :file => "#{Rails.root}/public/400.html", :status => 404, :layout => false and return false
         #raise ActionController::RoutingError.new('Not Found')

      end
      # respond_to do |format|
      #                format.xml {render xml: @answer}
      #                format.json {render json: @answer}
      #              end
      
    # else
    #       redirect_to("#{Rails.root}") and return false
    end
    
  end
  
  
end