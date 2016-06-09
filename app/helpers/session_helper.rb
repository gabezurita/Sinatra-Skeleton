helpers do
  def logged_in?
    session[:user_id] != nil
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authorize!
    redirect '/users/login' unless logged_in?
  end
end

#   # @from @mike, this is used to automatically log sin user when they register (optional)
#

# end
