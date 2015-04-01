get '/comments/:id' do
  params[:id]
  @thecomment = Comment.find(params[:id])
  content_type :json
  @thecomment.to_json
end

post '/comments' do
  Comment.create(title: params[:title], content: params[:content], user_to_id: params[:id], user_from_id: session[:user_id])
  @user_comments = Comment.where("user_to_id = #{params[:id]}")

  if request.xhr?
    erb :'comments/all', layout: false
  else
    redirect '/users/#{session[:user_id]}'
  end
end

delete '/comments/:id' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect "/users/#{session[:user_id]}"
end