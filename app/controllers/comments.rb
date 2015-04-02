get '/comments/:id' do
  params[:id]
  @thecomment = Comment.find(params[:id])
  content_type :json
  @thecomment.to_json
end

put '/comments/:id' do
  @current_comment = Comment.find(params[:id])

  if @current_comment
    @current_comment.title = params[:title]
    @current_comment.content = params[:content]

    if @current_comment.save
      redirect "/users/#{session[:user_id]}"
    else
      [500, 'Somthing Went Wrong']
    end

  else
    [404, "no User Profile Found"]
  end

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
