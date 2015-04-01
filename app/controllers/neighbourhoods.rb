get '/neighbourhoods/:id' do
  @neighbourhood = params[:id]
  @neighbourhood_profiles = User.where("neighbourhood_id = #{params[:id]}")
erb :'neighbourhoods/profiles'
end
