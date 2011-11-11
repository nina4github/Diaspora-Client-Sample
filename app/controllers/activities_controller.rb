class ActivitiesController < ActionController::Base
  before_filter :authenticate
 
 # get all the aspects names
  def index
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspects'))
    @activities = @response
    respond_to do |format|
      format.html
      format.json {render json: @response}
    end
  end
  
  
  # GET activities/:id reply to 
  def show
    @data1 = params[:id] # id is the name
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspect_posts?aspect_name='+params[:id]))
    @contacts = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/contacts'))
    
    respond_to do |format|
      format.html
      format.json {render json: {"response"=>@response,"contacts"=>@contacts}}
    end
  end
  
  # GET activities/:activityname/:service
  # is translated then in a request to the specific service you want to get data from for your specific activity
  # eg. activities/shopping/last
  # eg. activities/shopping/week
  # eg. activities/shopping/me
  
  def service
    @data1 = params[:activityname]
    @data2 = params[:service]
    
    respond_to do |format|
        format.html
        #format.json {render json: @response}
    end
  
  end
  
  
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
  
  # before filter method to check on the identity of the user. So far it is very bad and no password is provided 
  # BUT 
  # we need some proper authentication methods
  # it was suggested to use NFC with a private key as a signature for the objects. In the case of tablets it can be the user signature
  #
  def authenticate
    case request.format
    when Mime::XML, Mime::JSON #authentication only applies for these types of requests
       if (params[:user]!=nil )
         user = User.find_by_diaspora_id(params[:user])  
         if(user!=nil)
           request.env["warden"].set_user(user, :scope => :user, :store => true)
           @answer =  current_user.access_token
          else
           @answer = '401 Unauthorized - This user is not registered, please register it first on your Diaspora Client service'
          end
       else
         @answer='400 Bad Request - You need to send the user name with the domain of diaspora'
       end
      respond_to do |format|
        format.xml {render xml: @answer}
        format.json {render json: @answer}
      end
  end
  
  
end