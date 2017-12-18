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
  @transaction = Transaction.#editnew(params)
  @transaction.save()
  erb(:"transaction/create")
  redirect to("/transactions")
end
#update

#edit
get '/transact/edit' do # edit
  @transaction = Transaction.find( params[:id] )
  erb( :edit )
end

#update
post '/transactions/:id' do
  Transaction.new( params ).update
  redirect to '/transactions'
end


#delete
post '/transactions/:id/delete' do 
  transaction = Transaction.find( params[:id] )
  transaction.delete()
  redirect to '/transactions'
end
