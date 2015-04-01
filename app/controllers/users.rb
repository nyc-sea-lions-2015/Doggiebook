get '/users/:id' do
  @user = User.find(params[:id])
  @user_comments = Comment.where("user_to_id = #{params[:id]}")
  @user_to_id = params[:id]
  erb :'users/dashboard'
end