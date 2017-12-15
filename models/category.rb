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

  def self.all()
    sql = "SELECT * FROM categories"
    values = []
    result = SqlRunner.run(sql, values)
    categories = result.map {|category_hash| Category.new (category_hash)}
    return houses
  end


  end
