# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Character.destroy_all

stark = House.create(name: "Stark", motto: "Winter Is Coming", sigil_url: "http://awoiaf.westeros.org/images/5/51/House_Stark.PNG")
lannister = House.create(name: "Lannister", motto: "Hear Me roar!", sigil_url: "http://awoiaf.westeros.org/images/8/88/House_Lannister.png")
targaryen = House.create(name: "Targaryen", motto: "Fire and Blood", sigil_url: "http://awoiaf.westeros.org/images/thumb/1/1e/House_Targaryen.svg/500px-House_Targaryen.svg.png")

Character.create(name: "Arya Stark", weapon: "Needle", dead: false, house: stark)
Character.create(name: "Jamie Lannister", weapon: "a sword", dead: false, house: lannister)
Character.create(name: "Danyeres Targaryen", weapon: "dragons", dead: false, house: targaryen)
