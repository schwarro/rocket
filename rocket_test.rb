require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!

  def setup
    @rocket = Rocket.new
  end

  def test_name_update
    expected = 'Apollo'
    @rocket.name = 'Apollo'
    actual = @rocket.name
    assert_equal(expected, actual)
  end

  def test_color_updater
    expected = 'blue'
    @rocket.color = 'blue'
    actual = @rocket.color
    assert_equal(expected, actual)
  end

  def test_flying
    expected = false
    @rocket.flying = false
    actual = @rocket.flying
    assert_equal(expected, actual)
  end

  def test_lift_off
    expected = true
    @rocket.lift_off
    actual = @rocket.flying?
    assert actual
  end

  def test_landing
    @rocket.lift_off
    expected = false
    @rocket.land
    actual = @rocket.flying?
    assert_equal(expected, actual) 
  end
end
