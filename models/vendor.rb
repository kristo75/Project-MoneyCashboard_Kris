require_relative('../db/sql_runner.rb')

class Vendor

  attr_reader()

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @vendor_name = options['vendor_name']
  end

  end
