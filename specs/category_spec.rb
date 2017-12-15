require("minitest/autorun")
require("minitest/rg")
require_relative("../models/category")

class Testcategory <MiniTest::Test

  def setup
    @category = Category.new({'category_name' => "Groceries"})
  end


  def test_name
    assert_equal("Groceries", @category.category_name)
  end

end
