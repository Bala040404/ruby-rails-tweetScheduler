class RegistrationController <ApplicationController
  def signin
    @User = User.new
  end

  def addnew
    @User = User.create(getParams)
    if @User.save
      session["user_id"]=@User.id
      redirect_to root_path_url,notice:"Successfully created account"
    else


      render :signin
    end
  end

  private
  def getParams
    params.require("user").permit(:email,:password,:password_confirmation)
  end
end
