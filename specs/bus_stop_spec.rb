require('minitest/autorun')
require('minitest/rg')
require_relative("../bus_stop")

class BusStopTest < MiniTest::Test
  def setup
    @bus_stop = BusStop.new('lothian road', [])
  end

  def test_name
    assert_equal('lothian road', @bus_stop.name())
  end

  def test_queue
    assert_equal([], @bus_stop.queue())
  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue('jim')
    assert_equal(1, @bus_stop.queue.count)
  end

end
