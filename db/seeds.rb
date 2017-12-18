require_relative('../models/category')
require_relative('../models/transaction')
require_relative('../models/vendor')


category1 = Category.new({
  "category_name" => "Groceries"
  })

category2 = Category.new({
  "category_name" => "Social"
  })

category3 = Category.new({
  "category_name" => "Transport"
  })

category4 = Category.new({
  "category_name" => "Clothes"
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


Categroy.delete_all()


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

Vendor.delete_all()

transaction1 = Transaction.new ({"total" => 30, "name" => "Groceries"})
transaction2 = Transaction.new ({"total" => 18, "name" => "Social"})
transaction3 = Transaction.new ({"total" => 48, "name" => "Transport"})
transaction4 = Transaction.new ({"total" => 75, "name" => "Clothes"})
transaction5 = Transaction.new ({"total" => 45, "name" => "Gym"})
transaction6 = Transaction.new ({"total" =>  20, "name" => "Takeaway"}

transaction1.save
transaction2.save
transaction3.save
transaction4.save
transaction5.save
transaction6.save



      binding.pry
      nil
