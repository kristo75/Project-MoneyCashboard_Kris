require_relative('../models/category')
require_relative('../models/transaction')
require_releative('../models/vendor')


category1 = Categroy.new({
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


      binding.pry
      nil
