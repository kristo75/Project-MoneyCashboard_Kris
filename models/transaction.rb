require_relative('../db/sql_runner.rb')

class Transaction

  attr_reader()

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @category_id = options['category_id']
    @vendor_id = options['vendor_id']
    @amount = options['amount']
  end

  end
