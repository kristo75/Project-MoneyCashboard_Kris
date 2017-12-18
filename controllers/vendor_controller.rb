require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/vendor.rb' )


# INDEX
get('/vendors') do
  @vendors = Vendor.all()
  erb(:index)
end

# NEW
get('/vendors/new') do
  erb(:new)
end

# SHOW
get('/vendors/:id') do
  id = params[:id]
  @vendors = Vendor.find(id)
  erb(:show)
end

# CREATE
post('/vendor') do
  @vendor = Vendor.new(params)
  @vendor.save()
  erb(:create)
end
