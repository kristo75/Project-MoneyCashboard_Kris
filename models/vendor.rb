require_relative('../db/sql_runner.rb')

class Vendor

  attr_reader:id, :vendor_name,

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @vendor_name = options['vendor_name']
  end

  def save()

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
