class LoginController<ApplicationController

  def getdetails
  end

  def verify

    user = User.find_by(email:params["email"])
    if user.present? && user.authenticate(params["password"])
      session["user_id"] = user.id
      flash['notice'] ="succesfully logged in"
      redirect_to root_path_url
    else
      flash['alert']="invalid username or password"
      redirect_to signin_url
    end


  end

end
