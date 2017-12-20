require('pry-byebug')
require_relative('../models/category')
require_relative('../models/transaction')
require_relative('../models/vendor')
require_relative('../models/wallet')

Transaction.delete_all()
Vendor.delete_all()
Category.delete_all()

category1 = Category.new({
  "category_name" => "Groceries"
  })

category2 = Category.new({
  "category_name" => "Social"
  })

category3 = Category.new({
  "category_name" => "Clothes"
  })

category4 = Category.new({
  "category_name" => "Transport"
  })

category5 = Category.new({
  "category_name" => "Gym"
  })

category6 = Category.new({
  "category_name" => "Takeaway"
  })


category1.save()
category2.save()
category3.save()
category4.save()
category5.save()
category6.save()

vendor1 = Vendor.new({
  "vendor_name" => "Sainsburys"
  })

vendor2 = Vendor.new({
  "vendor_name" => "Silk"
  })

vendor3 = Vendor.new({
  "vendor_name" => "Supreme"
  })

vendor4 = Vendor.new({
  "vendor_name" =>"Lothian Buses"
  })

vendor5 = Vendor.new({
  "vendor_name" => "Silver Bowl"
  })

vendor6 = Vendor.new ({
  "vendor_name" => "Pure Gym"
  })

vendor1.save()
vendor2.save()
vendor3.save()
vendor4.save()
vendor5.save()
vendor6.save()


transaction1 = Transaction.new ({"amount" => 30, "category_id" => category1.id, "vendor_id" => vendor1.id})
transaction2 = Transaction.new ({"amount" => 18, "category_id" => category2.id, "vendor_id" => vendor2.id})
transaction3 = Transaction.new ({"amount" => 48, "category_id" => category3.id, "vendor_id" => vendor3.id})
transaction4 = Transaction.new ({"amount" => 75, "category_id" => category4.id, "vendor_id" => vendor4.id})
transaction5 = Transaction.new ({"amount" => 45, "category_id" => category5.id, "vendor_id" => vendor5.id})
transaction6 = Transaction.new ({"amount" => 20, "category_id" => category6.id, "vendor_id" => vendor6.id})

transaction1.save
transaction2.save
transaction3.save
transaction4.save
transaction5.save
transaction6.save

wallet = Wallet.new({
  "name" => "Josh"
  })

wallet.save()



binding.pry
nil
