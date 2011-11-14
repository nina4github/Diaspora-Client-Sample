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
  
  
  # GET activities/:id reply to 
  #
  # GET all the posts of the users included in this activity and all the posts that the current user has shared under this activity
  # GET all the posts of this aspect: from the people that I added to this aspect and from myself (what I shared under this aspect)
  # problem :: I receive all the messages from my friends, not just the ones related to xxx
  # solution :: we use the TAG #xxx to filter on the posts that are tagged with xx
  #             formally we take all the messages tagged with xx and then we filter them with only the ones uploaded by my friends
  #             It is possible because we use MENTIONS to connect a post (generated by an object) to a person        
   
  def show
    @data1 = params[:id] # id is the NAME of the activity/aspect not the ID
    page = params[:page] ?  params[:page] : 1 # to allow for multiple page retrieval
    
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspect_posts?aspect_name='+params[:id]))
    @friends = JSON.parse(current_user.access_token.token.get('/api/v0/aspects'))
    hasFriends =  @friends['aspects'].to_a.detect {|e| e['name'] == params[:id]+'friends'}
    if hasFriends
      @activities = JSON.parse(current_user.access_token.token.get('/api/v0/activities/'+params[:id]+'friends?only_posts=true&max_time='+(Time.now).to_i.to_s+"&page="+page.to_s))
      # @contacts = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/contacts'))
      @response['aspect_posts_friends'] = @activities['posts']
    end
    respond_to do |format|
      format.html
      format.json {render json: {"response"=>@response}} #"contacts"=>@contacts, "activities"=>@activities, "tags"=>@tags
    end
  end
  
  # GET activities/:activityname/:service
  # is translated then in a request to the specific service you want to get data from for your specific activity
  # eg. activities/shopping/last
  # eg. activities/shopping/week
  # eg. activities/shopping/me
  
  def me
    @data1 = params[:activityname]
    @response = "this call is under development"

    respond_to do |format|
        format.html
        format.json {render json: @response}
    end
  
  end
  
  def week
    @data1 = params[:activityname]
    #@contacts = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/contacts'))
    @response = "this call is under development"
    @activities = JSON.parse(current_user.access_token.token.get('/api/v0/activities/'+params[:activityname]+'?only_posts=true&max_time='+(Time.now).to_i.to_s+"&page=1"))
        
    respond_to do |format|
        format.html
        format.json {render json: @response}
    end
  
  end
  
  
  # TOREVIEW, the most updated is in GENIEHUB_controller/listen
  # POST activities/:id (id = activity name)
  def new
    # call to create will generate a new post with these information and on this aspect
    message = {'status_message'=>{'text'=>params[:text]},'aspect_name' => params[:id]}
    @response =JSON.parse(current_user.access_token.token.post('/api/v0/posts/new', message))
    @status_message = @response
    respond_to do |format|
        format.html
        format.json {render json: @response}
    end
    
  end
  
  def status
    # who is the current user?
    # current_user
    @activitycounter={"laundry"=>1,"shopping"=>0,"petanque"=>1,"coffee"=>2,"gym"=>6}
    respond_to do |format|
      format.json {render json: @activitycounter}
    end
  end
  
  # def tags
  #     @response = JSON.parse(current_user.access_token.token.get('/api/v0/tags/'+params[:activityname]+'?only_posts=true&max_time='+(Time.now).to_i.to_s+"&page=1"))
  #     respond_to do |format|
  #         format.html 
  #         format.json {render json: @response}
  #     end
  #   end
  
  def contacts
    @data1 = params[:activityname]
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:activityname]+'/contacts'))

    respond_to do |format|
        format.html 
        format.json {render json: @response}
    end
  
  end
  
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