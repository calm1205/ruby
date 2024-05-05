class Ticket
  attr_reader :fare, :stamped_at

  # fare: チケットの購入金額
  def initialize(fare:)
    @fare = fare
  end

  def stamp(station_name:)
    @stamped_at = station_name
  end
end
