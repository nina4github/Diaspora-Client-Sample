class ActivitiesController < ActionController::Base
  
  
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
    @data1 = params[:id] 
    @response = JSON.parse(current_user.access_token.token.get('/api/v0/aspect_posts?aspect_name='+params[:id]))
    @contacts = JSON.parse(current_user.access_token.token.get('/api/v0/aspects/'+params[:id]+'/contacts'))
    
    respond_to do |format|
      format.html
      format.json {render json: @response}
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
  
end