# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sourbulb = Kudomon.find_or_initialize_by(species: 'Sourbulb')
sourbulb.species = 'Sourbulb'
sourbulb.of_type = 'Grass'
sourbulb.location = 1
sourbulb.save

mancharred = Kudomon.find_or_initialize_by(species: 'Mancharred')
mancharred.species = 'Mancharred'
mancharred.of_type = 'Fire'
mancharred.location = 2
mancharred.save

chikapu = Kudomon.find_or_initialize_by(species: 'Chikapu')
chikapu.species = 'Chikapu'
chikapu.of_type = 'Electric'
chikapu.location = 3
chikapu.save

whirtle = Kudomon.find_or_initialize_by(species: 'Whirtle')
whirtle.species = 'Whirtle'
whirtle.of_type = 'Water'
whirtle.location = 4
whirtle.save

stoner = Kudomon.find_or_initialize_by(species: 'Stoner')
stoner.species = 'Stoner'
stoner.of_type = 'Rock'
stoner.location = 5
stoner.save

twomew = Kudomon.find_or_initialize_by(species: 'Twomew')
twomew.species = 'Twomew'
twomew.of_type = 'Psychic'
twomew.location = 6
twomew.save
