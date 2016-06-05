# EDIT:
get '/channel/:channel_id/subscriptions/:id/edit' do
  authorize!
  @channel = Channel.find(params[:channel_id])
  @subscription = @channel.subscriptions.find(params[:id])
  erb :'subscriptions/edit'
end

# EDIT2:
get '/entries/:id/edit' do
  @entry = Entry.find(params[:id])

  if current_user.id == @entry.user_id
    erb :'entries/edit'
  else
    redirect '/not_authorized'
  end
end

# ADD a subscription belonging to a channel:
post '/channels/:id/subscriptions' do
  authorize!
  Subscription.create(channel_id: params[:id], user_id: params[:user_id])
  redirect "/users/#{current_user.id}"
end

# REMOVE a subscription belonging to a channel:
delete '/channels/:id/subscriptions/:id' do
  authorize!
  subscription = Subscription.find(params[:id])
  subscription.destroy
  redirect "/users/#{current_user.id}"
end
