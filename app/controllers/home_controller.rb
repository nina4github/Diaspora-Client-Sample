class HomeController < ApplicationController
  respond_to :html
  
  

  def show
    if current_user
      flash[:notice] = "YAY!"
      @current_user = current_user
      render "success" 
    else
      user = User.find_by_diaspora_id('communityawvej@idea.itu.dk:3000')
      request.env["warden"].set_user(user, :scope => :user, :store => true)
      render "success" 
    end
  end
  
 

  
  
def logout
  request.env['warden'].logout
  render "show"
end

end

