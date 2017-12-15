equire("minitest/autorun")
require("minitest/rg")
require_relative("../models/vendor")

class Testvendor <MiniTest::Test

  def setup
    @vendor = Vendor.new({'vendor_name' => 'Sainsburys'})
  end


  def test_name
    assert_equal("Sainsburys", @vendor.name)
  end

end
