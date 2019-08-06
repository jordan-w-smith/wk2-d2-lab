require('minitest/autorun')
require('minitest/rg')
require_relative("../person")

class PersonTest < MiniTest::Test
  def setup
    @person = Person.new('john', 25)
  end

  def test_name
    assert_equal('john', @person.name())
  end

  def test_age
    assert_equal(25, @person.age)
  end

end
