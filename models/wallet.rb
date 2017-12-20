require_relative("../db/sql_runner")


class Wallet

  attr_reader :id
  attr_accessor :name, :budget

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @budget = 500
  end

  def save()
    sql = "INSERT INTO wallets (name, budget)
          VALUES ($1, $2) RETURNING id;"
    values = [@name, @budget]
    wallet_hash = SqlRunner.run(sql, values).first
    @id = wallet_hash["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM wallets;"
    wallet_hashes = SqlRunner.run(sql, [])
    return Wallet.new(wallet_hashes[0])
  end



end
