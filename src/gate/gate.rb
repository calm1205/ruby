class Gate

  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [160, 190]

  def initialize(station_name:)
    @station_name = station_name
  end

  def enter(ticket)
    ticket.stamp(station_name: @station_name)
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@station_name)
    distance = (from - to).abs
    FARES[distance - 1]
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end
end