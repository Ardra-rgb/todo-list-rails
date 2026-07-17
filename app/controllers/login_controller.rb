class LoginController < ApplicationController
  def index

    if params[:email].blank? || params[:password].blank?
      render plain: "Please register first."

    else
      user = User.find_by(email: params[:email])

      if user.nil?
        render plain: "Email not registered."

      elsif user.password != params[:password]
        render plain: "Invalid Password"

      else
        redirect_to "/dashboard/index"
      end
    end

  end
end