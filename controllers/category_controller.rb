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
  @category_new = Category.new(params)
  @category.save()
  redirect '/categories'
end
