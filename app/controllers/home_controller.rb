class HomeController < ApplicationController
  respond_to :html

  def show
    if current_user
      flash[:notice] = "YAY!"
      render "success"
    else
    end
  end
end

