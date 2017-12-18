require_relative('../db/sql_runner.rb')

class Vendor

  attr_reader :id, :vendor_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @vendor_name = options['vendor_name']
  end

  def save()
    sql = "INSERT INTO vendors (vendor_name)
          VALUES ($1) RETURNING id;"
    values = [@vendor_name]
    vendor_hash = SqlRunner.run(sql, values).first
    @id = vendor_hash["id"].to_i
  end

  def transactions()
    sql = "SELECT * FROM transactions
          WHERE vendor_id = $1;"
    values = [@id]
    transaction_hashes = SqlRunner.run(sql, values)
    return Transaction.map_items(transaction_hashes)
  end

  def self.all()
    sql = "SELECT * FROM vendors"
    values = []
    result = SqlRunner.run(sql, values)
    vendors = result.map {|vendor_hash| Vendor.new (vendor_hash)}
    return vendor
  end

  def self.find(id)
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    vendor = Vendor.new(result.first)
    return vendor
  end

  def self.delete_all()
    sql = "DELETE FROM categories"
    values =[]
    SqlRunner.run(sql, values)
  end

  def self.map_items(vendor_data)
    result = vendor_data.map {|vendor| Category.new(vendor)}
    return result
  end

end
