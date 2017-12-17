require_relative('../db/sql_runner.rb')

class Vendor

  attr_reader:id, :vendor_name,

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @vendor_name = options['vendor_name']
  end

def self.all()
  sql ="SELECT * FROM transactions"

  end
