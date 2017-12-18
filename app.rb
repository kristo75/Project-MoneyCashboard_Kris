require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/category.rb')
require_relative('controllers/transaction.rb')
require_relative('controllers/vendor.rb')

get '/' do
  erb( :index )
end
