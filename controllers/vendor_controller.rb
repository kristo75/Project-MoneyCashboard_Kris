require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/vendor.rb' )


# INDEX - READ
get '/vendors' do
  @vendor_name = Vendor.all()
  erb(:'vendors/index')
end

# NEW - CREATE
get '/vendors/new' do
  @vendor_name= Vendor.all()
  erb(:'vendors/new')
end

#CREATE - CREATE
post '/vendors' do
  @vendor_name = Vendor.new(params)
  @vendor_name.save()
  redirect '/vendors'
end



#edit
get '/vendors/:id/edit' do # edit
  @vendor_name = Vendor.find( params[:id] )
  erb( :"/vendors/edit" )
end

#update
post '/vendors/:id' do
  Vendor.new( params ).update
  redirect to '/vendors'
end


#delete
post '/categories/:id/delete' do
  category = category.find( params[:id] )
  category.delete()
  redirect to '/categories'
end
