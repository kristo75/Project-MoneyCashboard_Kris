require_relative('../db/sql_runner.rb')

class Transaction

  attr_reader :id, :category_id, :vendor_id, :amount

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @category_id = options['category_id'].to_i
    @vendor_id = options['vendor_id'].to_i
    @amount = options['amount'].to_i
  end

  def save()
    sql = "INSERT INTO transactions (category_id, vendor_id, amount)
          VALUES ($1, $2, $3)
          RETURNING id;"
    values = [@category_id, @vendor_id, @amount]
    transaction_hash = SqlRunner.run(sql, values).first
    @id = transaction_hash["id"].to_i
  end

  def category()
    sql = "SELECT * FROM categories
          WHERE id = $1;"
    values = [@category_id]
    category_hash = SqlRunner.run(sql, values).first
    return Category.new(category_hash)
  end

  def vendor()
    sql = "SELECT * FROM vendors
          WHERE id = $1;"
    values = [@vendor_id]
    vendor_hash = SqlRunner.run(sql, values).first
    return Vendor.new(vendor_hash)
  end

  def self.all()
    sql = "SELECT * FROM transactions"
    values = []
    result = SqlRunner.run(sql, values)
    transactions = result.map {|transaction_hash| Transaction.new (transaction_hash)}
    return transactions
  end

  def self.find(id)
    sql = "SELECT * FROM transactions WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    transaction = Transaction.new(result.first)
    return transaction
  end

  def self.delete_all()
    sql = "DELETE FROM transactions"
    values =[]
    SqlRunner.run(sql, values)
  end

  def update()
      sql = "UPDATE transactions
      SET
      (
        vendor_id,
        category_id,
        amount
        ) =
      (
          $1, $2, $3
      )
      WHERE id = $4"
      values = [@vendor_id, @category_id, @amount, @id]
      SqlRunner.run( sql, values )
    end

    def Transaction.total()
    sql = "SELECT SUM(amount) FROM transactions;"
    sum_hash = SqlRunner.run(sql, []).first
    return sum_hash["sum"]
  end

  def self.map_items(transaction_data)
    result = transaction_data.map {|transaction| Transaction.new(transaction)}
    return result
  end


  end
