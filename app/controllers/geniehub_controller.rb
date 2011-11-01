class GeniehubController < ActionController::Base


  @@domain = '@idea.itu.dk:3000';
  # I need to have a variable that hosts a counter for each activity ($activities is the global variable)
  # that is incremented or decremented depending on listener function

  def listener
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
    
    if (User.find_by_diaspora_id(params[:object]+@@domain)!=null){
      user = User.find_by_diaspora_id(params[:object]+@@domain)
    }
    else{ 
     if( User.find_by_diaspora_id(params[:user]+@@domain)!=null){
       user=User.find_by_diaspora_id(params[:user]+@@domain);
     }
     else{ user = User.find_by_diaspora_id("communityawvej"+@@domain)}
    }
    # user = User.find_by_diaspora_id('ninaondiaspora@diaspora.localhost')  
    request.env["warden"].set_user(user, :scope => :user, :store => true)
    
    
    # mentions derived from the javascript :): status_message[text]:ciao @{Elena Nazzi; ninaondiaspora@localhost:3000} 
    #params[:person] = "ninaondiaspora"
    text = ""
    mention = "@{"+params[:user]+"; "+params[:user]+@@domain+"}"
    if params[:content]=="start"
      text += mention + " started #"+ params[:activity]
    else
      text += mention + " stopped #"+  params[:activity]
    end  
    message = {'status_message'=>{'text'=>text},'aspect_name' => params[:activity],'tag'=> params[:activity]}
    puts "hello"
    
    # request is then translated to the diaspora server 
    @response = JSON.parse(current_user.access_token.token.post('/api/v0/create',message))
    puts "print response"
    puts @response
    puts "done"
  end

  def js
    
    end 

end