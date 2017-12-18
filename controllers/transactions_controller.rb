require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/category.rb' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/vendor.rb' )


# INDEX - show all transactions

get('/transactions') do
  @transactions = Transaction.all()
  erb(:"transactions/index")
end

# NEW route

get('/transactions/new') do
  @vendors = Vendor.all()
  @category = Category.all()
  erb(:"transactions/new")
end

# CREATE route

post('/transactions') do

  @transaction = Transaction.new(params)
  @transaction.save()
  erb(:"transactions/create")
  redirect to("/transactions")
end
