require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/category.rb' )



# INDEX - READ
get '/categories' do
  @category_name = Category.all()
  erb(:'categories/index')
end

# NEW - CREATE
get '/categories/new' do
  @category_name= Category.all()
  erb(:'categories/new')
end

#CREATE - CREATE
post '/categories' do
  @category_name = Category.new(params)
  @category.save()
  redirect '/categories'
end


#edit
get '/categories/:id/edit' do # edit
  @category = Category.find( params[:id] )
  erb( :'categories/edit' )
end

#update
post '/categories/:id' do
  Category.new( params ).update
  redirect to '/categories'
end


#delete
post '/categories/:id/delete' do
  category = category.find( params[:id] )
  category.delete()
  redirect to '/categories'
end
