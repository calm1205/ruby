class Gate

  TOYOKO_STATIONS = [
    :shibuya,            # 渋谷
    :daikanyama,         # 代官山
    :nakameguro,         # 中目黒
    :yuutenji,           # 祐天寺
    :gakugeidaigaku,     # 学芸大学
    :toritsudaigaku,     # 都立大学
    :jiyugaoka,          # 自由が丘
    :denenchofu,         # 田園調布
    :tamagawa,           # 多摩川
    :shinmaruko,         # 新丸子
    :musashikosugi,      # 武蔵小杉
    :motomachi,          # 元住吉
    :hiyoshi,            # 日吉
    :tsunashima,         # 綱島
    :ookurayama,         # 大倉山
    :kikuna,             # 菊名
    :myorenji,           # 妙蓮寺
    :shiraku,            # 白楽
    :higashishiraku,     # 東白楽
    :hanamachi,          # 反町
    :yokohama            # 横浜
  ]

  MINIMUM_FARE = 120
  FARE_PER_STATION = 30

  def initialize(station_name:)
    @station_name = station_name
  end

  def enter(ticket)
    ticket.stamp(station_name: @station_name)
  end

  def calc_distance(ticket)
    from = TOYOKO_STATIONS.index(ticket.stamped_at)
    to = TOYOKO_STATIONS.index(@station_name)
    distance = (from - to).abs
  end

  def calc_fare(distance)
    MINIMUM_FARE + FARE_PER_STATION * (distance - 1)
  end

  def exit(ticket)
    distance = calc_distance(ticket)
    fare = calc_fare(distance)

    isExitable = fare <= ticket.fare
  end
end