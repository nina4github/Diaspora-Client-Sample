class GeniehubController < ActionController::Base

  def listener
    @genie = request
    # Parameters: {"state"=>"start", "timestamp"=>1318781631703, "objectid"=>"object", "activity"=>"shopping"}

    # the object is the one who posts a new status with the mention of the person it is associated to
    #user = User.find_by_diaspora_id(params[:objectid]+'@diaspora.localhost')
    user = User.find_by_diaspora_id('ninaondiaspora@diaspora.localhost')
    request.env["warden"].set_user(user, :scope => :user, :store => true)
    
    params[:person] = "ninaondiaspora"
      text = params[:person]+"@diaspora.localhost"
    if params[:state]=="start"
      text += " is out #"+ params[:activity]
    else
      text += " is back from #"+  params[:activity]
    end  
    message = {'status_message'=>{'text'=>text},'aspect_name' => params[:activity],'tag'=> params[:activity]}
    puts "hello"
    
    # request is then translated to the diaspora server 
    @response = JSON.parse(current_user.access_token.token.post('/api/v0/create',message))
    puts "print response"
    puts @response
    puts "done"
  end


end