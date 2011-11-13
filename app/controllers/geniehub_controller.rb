class GeniehubController < ActionController::Base

  # I need to have a variable that hosts a counter for each activity ($activities is the global variable)
  # that is incremented or decremented depending on listener function

  def listener
    domain = "@idea.itu.dk:3000"
    puts "listener"
    @genie = request
    
    # Parameters: {"content"=>"start", "timestamp"=>1318781631703, "object"=>"object", "activity"=>"shopping", "user"=>"nina"}

  #first send the message to diaspora
    #and
    #update the view through javascript 
    #what I have to update is some elements in shared/bar _bar.html.haml
    #therefore: parse the message, detect the related activity and glow the related image 
    # saving a counter variable with the number of users on so that when noting is happening the interface is consistent
    
    # the object is the one who posts a new status with the mention of the person it is associated to
    #user = User.find_by_diaspora_id(params[:objectid]+'@diaspora.localhost')
    #params[:user] = "community";
    
    if User.find_by_diaspora_id(params[:object]+domain) 
      user = User.find_by_diaspora_id(params[:object]+domain)
    # elsif User.find_by_diaspora_id(params[:user]+domain)
    #       user=User.find_by_diaspora_id(params[:user]+domain)
    #     else 
    #       user = User.find_by_diaspora_id("communityawvej"+domain)
    end
    puts user.diaspora_id
    #     # user = User.find_by_diaspora_id('ninaondiaspora@diaspora.localhost')  
    request.env["warden"].set_user(user, :scope => :user, :store => true)
    
    counter = 0 # counter for maintaining the status of the open activities
    # mentions derived from the javascript :): status_message[text]:ciao @{Elena Nazzi; ninaondiaspora@localhost:3000} 
    #params[:person] = "ninaondiaspora"
    text = ""
    mention = "@{"+params[:user]+"; "+params[:user]+domain+"}" 
    #mention2 = "@{"+params[:object]+"; "+params[:object]+domain+"}" 
    mention2 = "#"+params[:object]
    if params[:content]=="start"
      text += mention + " started #"+ params[:activity] + " with " +mention2 
      counter = counter + 1
      
    elsif params[:content]=="stop"
      text += mention + " stopped #"+  params[:activity] + " with " +mention2
      counter>0 ? counter-1:0; 
    end  
    
    updateEventCounter(params[:activity],counter)
    
    message = {'status_message'=>{'text'=>text},'aspect_name' => params[:activity],'tag'=> params[:activity]}
    puts params[:activity]
    
    # request is then translated to the diaspora server 
    @response = JSON.parse(current_user.access_token.token.post('/api/v0/create',message))
    puts "print response"
    puts @response
    puts "done"
  end

  def js
    
  end 
    
    
  def status
    events = Event.all
    @tmp = {}
    events.each do |event|
      @tmp[event.activity_name] = event.counter
    end
    
    respond_to do |format|
        format.json {    render :json =>@tmp}
    end
  end
    
  def updateEventCounter( activity_name,  counter)
      puts "inside updateEventCounter"
      @event = Event.find_by_activity_name(activity_name)
      if @event == nil
         @event = Event.new
        @event.activity_name=activity_name
      end

      puts @event
      
      if @event.update_attributes(:counter => counter)
        puts "OK update"
      elsif @event.save
        puts "OK save"
      else 
        puts "error"
      end
  end
    

end
