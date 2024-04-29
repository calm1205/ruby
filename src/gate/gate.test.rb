require "minitest/autorun"
require_relative 'gate'
require_relative 'ticket'

class GateTest < Minitest::Test
  def setup
    @umeda = Gate.new(station_name: :umeda)
    @juso = Gate.new(station_name: :juso)
    @mikuni = Gate.new(station_name: :mikuni)
  end

  def test_umeda_to_juso
    ticket = Ticket.new(fare: 160)
    @umeda.enter(ticket)

    assert @juso.exit(ticket)
  end

  def test_umeda_to_mikuni_fare_is_not_enough
    ticket = Ticket.new(fare: 160)
    @umeda.enter(ticket)

    refute @mikuni.exit(ticket)
  end
end
