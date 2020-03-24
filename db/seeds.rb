# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(name: "Stanley Lee", 
					home_address: "4726 162ndst, Flushing, NY 11358", 
					work_address: "81 Prospect St, Brooklyn, NY 11201",
					email: "96stanleylee@gmail.com")
user2 = User.create(name: "Rivka Schebler", 
					home_address: "41-07 42nd St, Queens, NY 11104", 
					work_address: "151 E 25th St, New York, NY 10010",
					email: "Rivka.Schebler@gmail.com")
user3 = User.create(name: "Matt Rosen", 
					home_address: "10-22 Wyckoff Ave, Ridgewood, NY 11385", 
					work_address: "124 W 24th St, New York, NY 10011",
					email: "Matt.Rosen@gmail.com")
user4 = User.create(name: "Rayford Heise", 
					home_address: "1725 Dorchester Rd, Brooklyn, NY 11226", 
					work_address: "542 W 27th St, New York, NY 10001",
					email: "Rayford.Heise@gmail.com")
user5 = User.create(name: "Mirta Krall", 
					home_address: "50 Bowery, New York, NY 10013", 
					work_address: "237 W 23rd St, New York, NY 10011",
					email: "Mirta.Krall@gmail.com")
user6 = User.create(name: "Latricia Lowman", 
					home_address: "103 Avenue B, New York, NY 10009", 
					work_address: "331 West 4th Street, New York, NY 10014",
					email: "Latricia.Lowman@gmail.com")
user7 = User.create(name: "Adelina Soller", 
					home_address: "486 6th Ave, Brooklyn, NY 11215", 
					work_address: "63 W 37th St, New York, NY 10018",
					email: "Adelina.Soller@gmail.com")
user8 = User.create(name: "Euna Straka", 
					home_address: "188 Woodpoint Rd, Brooklyn, NY 11211", 
					work_address: "300 W 49th St, New York, NY 10019",
					email: "Euna.Straka@gmail.com")
user9 = User.create(name: "Camilla Paquin", 
					home_address: "1002 Halsey St, Brooklyn, NY 11207", 
					work_address: "1071 5th Ave, New York, NY 10128",
					email: "Camilla.Paquin@gmail.com")
user10 = User.create(name: "Ben Hickson", 
					home_address: "54 Noll St, Brooklyn, NY 11206", 
					work_address: "457 3rd Ave, Brooklyn, NY 11215",
					email: "Ben.Hickson@gmail.com")
user11 = User.create(name: "Blaine Taft", 
					home_address: "722 Nostrand Ave, Brooklyn, NY 11216", 
					work_address: "88 Liberty View Dr, Jersey City, NJ 07302",
					email: "Blaine.Taft@gmail.com")

group1 = Group.create(name: 'The Lee Family')
group2 = Group.create(name: 'Hudson Party Chat!')
group3 = Group.create(name: 'Bedstuy Friends')

Membership.create(group: group1, user: user1)
Membership.create(group: group1, user: user3)
Membership.create(group: group1, user: user5)
# Membership.create(group: group1, user: user7)
# Membership.create(group: group1, user: user9)
Membership.create(group: group1, user: user11)
Membership.create(group: group2, user: user1)
Membership.create(group: group2, user: user4)
# Membership.create(group: group2, user: user8)
Membership.create(group: group2, user: user10)
Membership.create(group: group2, user: user2)
# Membership.create(group: group2, user: user3)
Membership.create(group: group2, user: user7)
Membership.create(group: group2, user: user9)
Membership.create(group: group2, user: user6)
# Membership.create(group: group3, user: user6)
Membership.create(group: group3, user: user2)
Membership.create(group: group3, user: user11)

location_type1 = LocationType.create(category: "Bar")
location_type2 = LocationType.create(category: "Bar with Food")
location_type3 = LocationType.create(category: "Restaurant")


location1 = Location.create(address: "30 Water St ,New York, NY 10004", 
                            name: "The Dead Rabbit",
                            price_in_dollar_signs: 2,
                            location_type: location_type2
                            )

location2 = Location.create(address: "372 Lafayette St, New York, NY 10012", 
                            name: "Atla",
                            price_in_dollar_signs: 2,
                            location_type: location_type3
                            )

location3 = Location.create(address: "310 W 40th St, New York, NY 10018", 
                            name: "Dear Irving",
                            price_in_dollar_signs: 3,
                            location_type: location_type2
                            )

location4 = Location.create(address: "108 Patchen Ave, Brooklyn, NY 11221", 
                            name: "The Wilky",
                            price_in_dollar_signs: 2,
                            location_type: location_type2
                            )

location5 = Location.create(address: "348 Wythe Ave, Brooklyn, NY 11249", 
                            name: "Sunday In Brooklyn",
                            price_in_dollar_signs: 2,
                            location_type: location_type3
                            )

Meetup.create(location: location1, group: group1, date: Time.new(2020, 04, 05))
Meetup.create(location: location3, group: group1, date: Time.new(2020, 03, 20))
Meetup.create(location: location5, group: group1, date: Time.new(2020, 04, 11))

Meetup.create(location: location2, group: group2, date: Time.new(2020, 04, 07))
Meetup.create(location: location4, group: group2, date: Time.new(2020, 03, 29))
Meetup.create(location: location1, group: group2, date: Time.new(2020, 04, 05))

Meetup.create(location: location3, group: group3, date: Time.new(2020, 04, 02))
Meetup.create(location: location2, group: group3, date: Time.new(2020, 03, 18))
Meetup.create(location: location5, group: group3, date: Time.new(2020, 04, 15))

