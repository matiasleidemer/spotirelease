class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      redirect_to login_path, notice: "Successfully logged in, #{@user.email}"
    else
      redirect_to login_path, error: "Something went wrong"
    end
  end

  def failure
    raise
  end
end
