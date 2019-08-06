require('minitest/autorun')
require('minitest/rg')
require_relative("../bus")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(33, 'ocean terminal', [])

  end

  def test_route
    assert_equal(33, @bus.route())
  end

  def test_destination
    assert_equal("ocean terminal", @bus.destination)
  end

  def test_passengers
    assert_equal([], @bus.passengers)
  end

  def test_if_bus_can_drive
    assert_equal("broom broom", @bus.drive())
  end

  def test_how_many_passengers
    @bus = Bus.new(33, 'ocean terminal', ['Steve', 'Lisa', 'Mark'])
    assert_equal(3, @bus.how_many_passengers)
  end

  def test_add_passenger
    @bus.add_passenger('Mike')
    assert_equal(1, @bus.how_many_passengers)
  end

  def test_drop_off_passenger
    @bus.drop_off_passenger('Mike')
    assert_equal(0, @bus.how_many_passengers)
  end

  def test_remove_all_passengers
    @bus.remove_all_passengers
    assert_equal(0, @bus.how_many_passengers)
  end







end
