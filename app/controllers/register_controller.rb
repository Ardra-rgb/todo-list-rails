class RegisterController < ApplicationController

  def signup
    if request.post?
      user = User.new
      user.name = params[:name]
      user.email = params[:email]
      user.password = params[:password]

      if user.save
        redirect_to "/home/login"
      else
        render :signup
      end
    end
  end

end