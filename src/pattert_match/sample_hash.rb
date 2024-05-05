cars = [
  { name: "The Beatle", engine: "105ps" },
  { name: "Prius", engine: "110ps", motor: "72ps" },
  { name: "Tesla", motor: "150ps" }
]

cars.each do |car|
  case car
  in { name:, engine:, motor: }
    puts "#{name} has engine: #{engine} and motor: #{motor}"
  in { name:, engine: }
    puts "#{name} has engine: #{engine}"
  in { name:, motor: }
    puts "#{name} has motor: #{motor}"
  end
end
