class SignoutController<ApplicationController
  def destroy
    session["user_id"] = nil
    redirect_to root_path_url,alert:"logged out"
  end
end
