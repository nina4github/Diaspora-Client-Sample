class HomeController < ApplicationController
  respond_to :html

  def show
    if current_user
      flash[:notice] = "YAY!"
      @current_user = current_user

      render "success" 
    else
    end
    @activities = ["name"=>"shopping",
      "name"=>"laundry",
      "name"=>"petanque"]
  end
    
def logout
  request.env['warden'].logout
  render "show"
end

end

