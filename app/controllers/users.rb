get '/users/:id' do
  @user = User.find(params[:id])
  @user_comments = Comment.where("user_to_id = #{params[:id]}")
  @user_to_id = params[:id]
  @neighbourhoods = Neighbourhood.all
  erb :'users/dashboard'
end