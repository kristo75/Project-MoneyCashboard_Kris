require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/category.rb' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/vendor.rb' )


# INDEX - show all transactions

get('/transactions') do
  @transactions = Transaction.all()
  erb(:"transaction/index")
end

# NEW route

get('/transactions/new') do
  @vendors = Vendor.all()
  @category = Category.all()
  erb(:"transaction/new")
end

# CREATE route

post('/transactions') do
  @transaction = Transaction.new(params)
  @transaction.save()
  erb(:"transaction/create")
  redirect to("/transactions")
end

#edit
get '/transactions/:id/edit' do
  @vendors = Vendor.all()
  @categorys = Category.all()
  @transaction = Transaction.find( params[:id] )
  erb( :"transaction/edit" )
end

#update
post '/transactions/:id' do
  transaction = Transaction.new(params)
  transaction.update
  redirect to '/transactions'
end


#delete
post '/transactions/:id/delete' do
  transaction = Transaction.find( params[:id] )
  transaction.delete()
  redirect to '/transactions'
end

#show
get('/transactions/:id') do
  id = params[:id]
  @transaction = Transaction.find(id)
  erb( :"transaction/show" )
end
