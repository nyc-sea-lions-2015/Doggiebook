get '/' do
  @neighbourhoods = Neighbourhood.all
  erb :'index'
end