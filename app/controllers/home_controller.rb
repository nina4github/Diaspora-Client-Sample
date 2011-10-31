class HomeController < ApplicationController
  respond_to :html

  def show
    if current_user
      flash[:notice] = "YAY!"
      @current_user = current_user
      render "success" 
    else
    end
  end
    
def logout
  request.env['warden'].logout
  render "show"
end

end

