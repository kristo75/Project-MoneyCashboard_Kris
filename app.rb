require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/category_controller.rb')
require_relative('controllers/transactions_controller.rb')
require_relative('controllers/vendor_controller.rb')

get '/' do
  erb( :index )
end
