require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/category_controller.rb')
require_relative('controllers/transactions_controller.rb')
require_relative('controllers/vendor_controller.rb')
require_relative('models/wallet.rb')
require_relative('models/transaction.rb')

get '/' do
  @wallet = Wallet.all()
  @total = Transaction.total()
  erb( :index )
end
