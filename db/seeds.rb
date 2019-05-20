bristol = Restaurant.new(name: "Epicure", category: "french")
bristol.address = "75008 Paris"
bristol.save

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'belgian',
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'italian',
  },
  {
    name:         'Septime',
    address:      'rue de Charonne 75011 PARIS',
    category:     'french',
  },
  {
    name:         'Tripletta',
    address:      'Bd de Belleville 75020 PARIS',
    category:     'italian',
  },  {
    name:         'Chez Justine',
    address:      'Rue Oberkampf 75011 PARIS',
    category:     'belgian',
  },
  {
    name:         'Tout Tofu',
    address:      'rue Moret 75020 PARIS',
    category:     'chinese',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
