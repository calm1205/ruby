require "minitest/autorun"
require_relative "gate"
require_relative "ticket"

class GateTest < Minitest::Test
  def setup
    # 横浜
    @yokohama = Gate.new(station_name: :yokohama)

    # 菊名
    @kikuna = Gate.new(station_name: :kikuna)

    # 渋谷
    @shibuya = Gate.new(station_name: :shibuya)
  end

  def test_yokohama_to_kikuna_fare_is_enough
    ticket = Ticket.new(fare: 270)
    @yokohama.enter(ticket)

    assert @kikuna.exit(ticket)
  end

  def test_yokohama_to_shibuya_fare_is_not_enough
    ticket = Ticket.new(fare: 270)
    @yokohama.enter(ticket)

    refute @shibuya.exit(ticket)
  end
end
