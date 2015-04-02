# this is debatable???
get '/neighborhoods' do
  @neighbourhoods = Neighbourhood.all
  erb :'index'
end

get '/neighbourhoods/:id' do
  @neighbourhood = params[:id]
  @neighbourhood_profiles = User.where(neighbourhood_id: params[:id]) # We don't do that array-like interpolation too much anymore except where queries are expectionally difficult, prefer this hash-style
erb :'neighbourhoods/profiles'
end
