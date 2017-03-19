require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Zsolt")
    @guest_2 = Guest.new("Sandy")
  end

  def test_guests_exist
    assert_equal("Zsolt", @guest_1.guest_name)
    assert_equal("Sandy", @guest_2.guest_name)
  end

end