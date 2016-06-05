get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/:id' do
  authorize!
  @user = User.find(id: params[:id])
  if logged_in? && current_user.id == @user.id
    erb :'/users/show'
  else
    @errors = "You are not authorized to go there."
    # alternative:
      # redirect '/not_authorized' if !current_user || current_user.id.to_s != params[:id]
    erb :'index'
  end
end
