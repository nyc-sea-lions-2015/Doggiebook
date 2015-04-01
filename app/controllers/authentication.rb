get '/authentication/signin' do
  erb :'authentication/signin'
end

get '/authentication/signup' do
  erb :'authentication/signup'
end

post '/authentication/login' do
  user = User.find_by(handle: params[:handle])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    session[:message] = "invalid username and/or password"
    redirect '/?error=true'
  end
end

post '/authentication/register_user' do
  if params[:password] == params[:password_confirm]
    user = User.new(email: params[:email], password: params[:password], first_name: params[:first_name], last_name: params[:last_name], url: params[:url], handle: params[:handle], bio: params[:bio], neighbourhood_id: params[:neighbourhood_id],)
    user.save
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/?error=true'
  end
end

get '/authentication/logout' do
  session[:user_id] = nil
  redirect '/'
end
