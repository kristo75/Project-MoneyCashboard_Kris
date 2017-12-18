require_relative('../db/sql_runner.rb')

class Category

  attr_reader :category_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @category_name = options['category_name']
  end

  def save()
    sql = "INSERT INTO category
    (category_name)
    VALUES($1)
    RETURNING *"
    values = [@category_name]
    category_data = SqlRunner.run(sql, values)
    @id = category_data.first()['id'].to_i
  end

  def transactions()
    sql = "SELECT * FROM transactions
          WHERE category_id = $1;"
    values = [@id]
    transaction_hashes = SqlRunner.run(sql, values)
    return Transaction.map_items(transaction_hashes)
  end

  def self.all()
    sql = "SELECT * FROM categories"
    values = []
    result = SqlRunner.run(sql, values)
    categories = result.map {|category_hash| Category.new (category_hash)}
    return category
  end

  def self.find(id)
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    category = Category.new(result.first)
    return category
  end

  def self.delete_all()
    sql = "DELETE FROM categories"
    values =[]
    SqlRunner.run(sql, values)
  end

  def self.map_items(category_data)
    result = category_data.map {|category| Category.new(category)}
    return result
  end

end
