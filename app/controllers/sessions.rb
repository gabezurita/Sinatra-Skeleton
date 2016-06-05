get '/login' do
  erb :'users/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = "Your credentials are invalid"
    erb :'users/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

# potential way to redirect users to unauthorized site:
get '/not_authorized' do
  erb :'/not_authorized'
end
