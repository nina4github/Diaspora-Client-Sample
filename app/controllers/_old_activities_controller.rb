class ActivitiesController < ActionController::Base
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
    
    # contact_ids=Array.new
    #    j=0
    #    for j in (0...@response['contacts'].size) 
    #        contact_ids[j] = @response['contacts'][j]['contact']['person_id']
    #    end
    #    puts contact_ids
    #    @profiles= JSON.parse(current_user.access_token.token.get('/api/v0/profiles?ids='+contact_ids.to_json))
    #    
    respond_to do |format|
        format.html 
        format.json {render json: {"response"=>@response}}
    end
  
  end
  
  # GET activities/:id reply to 
  #
  # GET all the posts of the users included in this activity and all the posts that the current user has shared under this activity
  # GET all the posts of this aspect: from the people that I added to this aspect and from myself (what I shared under this aspect)
  # problem :: I receive all the messages from my friends, not just the ones related to xxx
  # solution :: we use the TAG #xxx to filter on the posts that are tagged with xx
  #                  
   
  def stream
    @data1 = params[:id] # id is the NAME of the activity/aspect not the ID
    page = params[:page] ?  params[:page] : 1 # to allow for multiple page retrieval
    @response = Hash.new
    
    if !(params[:querytype]).nil?
      addquery = "?querytype="+params[:querytype];
    else
      addquery =  ""
    end
    @response['myactivities'] = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'objects'+addquery))
    
    # start temporary control
    @aspects = JSON.parse(current_user.access_token.token.get('/api/v0/aspects'))
    hasActivityFriends =  @aspects['aspects'].detect {|e| e['aspect']['name'] == params[:id]+'friends'}
    if hasActivityFriends
      # this call will gather the stream of the aspect <activityname>friends plus it offers, for each of my friends their activity
      # the implementation happens in diaspora 
      @response['friendsactivities'] = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'friends'+addquery))
    end
    #end temporary control
    
    # UNCOMMENT if resources and places are in use
    #@response['resourcesactivities'] = JSON.parse(current_user.access_token.token.get('/api/v0/aspect/'+params[:id]+'resources'+addquery))
    #@response['placesactivities'] = JSON.parse(current_user.access_token.token.get('/api/v0/aspect/'+params[:id]+'places'+addquery))
    
  
    #@my_activities = JSON.parse(current_user.access_token.token.get('/api/v0/aspect_posts?aspect_name='+params[:id]))
    #@response['my_activities'] = @my_activities
    #@aspects = JSON.parse(current_user.access_token.token.get('/api/v0/aspects'))
    #hasActivityFriends =  @aspects['aspects'].detect {|e| e['aspect']['name'] == params[:id]+'friends'}
    
    #if hasActivityFriends
    #  @friends_activities = JSON.parse(current_user.access_token.token.get('/api/v0/activities/'+params[:id]+'friends?only_posts=true&max_time='+(Time.now).to_i.to_s+"&page="+page.to_s))
    #  @sparks = JSON.parse(current_user.access_token.token.get('/api/v0/aspect_posts?aspect_name='+params[:id]+'friends'))
    # 
    #  @response['friends_activities'] = @friends_activities['posts']
    #  @response['sparks'] = @sparks
    #end
    respond_to do |format|
      format.html {render "stream"}
      format.json {render json: {"response"=>@response}} #"contacts"=>@contacts, "activities"=>@activities, "tags"=>@tags
    end
    
  end
  
  
  #GET activities/:id
  def show
    @data1 = params[:id] # id is the NAME of the activity/aspect not the ID
    page = params[:page] ?  params[:page] : 1 # to allow for multiple page retrieval
    @response = Hash.new
    
    if !(params[:querytype]).nil?
      addquery = "?querytype="+params[:querytype];
    else
      addquery =  ""
    end
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/fullstream'+addquery))
    
     respond_to do |format|
        format.html {render "stream"}
        format.json {render json: {"response"=>@response}} #"contacts"=>@contacts, "activities"=>@activities, "tags"=>@tags
      end
  end
  
  # TOREVIEW, the most updated is in GENIEHUB_controller/listen
  # POST activities/:id id is the activity name
  def new
    # call to create will generate a new post with these information and on this aspect
    message = {'status_message'=>{'text'=>params[:text]},'aspect_name' => params[:id]}
    @response =JSON.parse(current_user.access_token.token.post('/api/v0/posts/new', message))
    @status_message = @response
    respond_to do |format|
        format.html
        format.json {render json: {"response"=>@response}}
    end
    
  end
  
  
  
  ## GET profiles/:id
  # retrieve profile information about a specific user defined by a person id 
  # in our world also objects will have this person information set
  def profiles 
      personid = params[:id]
      @response = JSON.parse(current_user.access_token.token.get('/api/v0/profiles?ids='+params[:id]))
      respond_to do |format|
        format.html
        format.json {render json: {'response'=> @response}}
      end
  end
  
  # GET last status of me and my friends
  #
  # def last
  #     # I need to retrieve all the messages tagged with activity and mentioning my friends and get the last
  #     #     I need to retrieve the last post on the aspect stream
  #     #     I can reuse activities/activityname and get the latest value with .last for each information I need and for each of my friends.
  #     #     My last status = @response[‘my_activities’][‘aspect_posts_stream’].last
  #     #     My friends last status = @response[‘friends_activities’]
  #     #     This is the query to insert into the api 
  #     # User.find(3).aspects.find_by_name('laundry').posts.joins(:mentions).group('mentions.person_id').having('max(posts.created_at)')
  #     #     
  #   end
    
   
  def delete
    puts "you cannot delete an activity right now"
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