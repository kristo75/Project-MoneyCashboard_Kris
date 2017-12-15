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






      #
      #
      # House.delete_all()
      # Student.delete_all()
      #
      # house1 = House.new({
      #   "house_name" => "Gryffindor",
      #   "url" => "Image of house 1",
      #   })
      #
      #   house2 = House.new({
      #     "house_name" => "Ravenclaw",
      #     "url" => "Image of house 2",
      #     })
      #
      #     house1.save()
      #     house2.save()
      #
      # student1 = Student.new({
      #   "first_name" => "Harry",
      #   "last_name" => "Potter",
      #   "house_id" => house1.id,
      #   "age" => 16
      #   })
      #
      #   student2 = Student.new({
      #     "first_name" => "Hermione",
      #     "last_name" => "Granger",
      #     "house_id" => house2.id,
      #     "age" => 15
      #     })
