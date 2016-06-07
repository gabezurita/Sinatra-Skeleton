helpers do
  def logged_in?
    session[:user_id] != nil
  end

  def current_user
    @_cached_user ||= User.find(session[:user_id]) if logged_in?
  end

  def authorize!
    redirect '/login' unless logged_in?
  end

  # @from @mike, this is used to automatically log sin user when they register (optional)
  def login(user)
    session[:user_id] = user.id
  end
end
