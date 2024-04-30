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