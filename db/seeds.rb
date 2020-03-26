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
					email: "96stanleylee@gmail.com",
					password: "password")
user2 = User.create(name: "Rivka Schebler", 
					home_address: "41-07 42nd St, Queens, NY 11104", 
					work_address: "151 E 25th St, New York, NY 10010",
					email: "Rivka.Schebler@gmail.com",
					password: 'NPCpassword')
user3 = User.create(name: "Matt Rosen", 
					home_address: "10-22 Wyckoff Ave, Ridgewood, NY 11385", 
					work_address: "124 W 24th St, New York, NY 10011",
					email: "Matt.Rosen@gmail.com",
					password: 'NPCpassword')
user4 = User.create(name: "Rayford Heise", 
					home_address: "1725 Dorchester Rd, Brooklyn, NY 11226", 
					work_address: "542 W 27th St, New York, NY 10001",
					email: "Rayford.Heise@gmail.com",
					password: 'NPCpassword')
user5 = User.create(name: "Mirta Krall", 
					home_address: "50 Bowery, New York, NY 10013", 
					work_address: "237 W 23rd St, New York, NY 10011",
					email: "Mirta.Krall@gmail.com",
					password: 'NPCpassword')
user6 = User.create(name: "Latricia Lowman", 
					home_address: "103 Avenue B, New York, NY 10009", 
					work_address: "331 West 4th Street, New York, NY 10014",
					email: "Latricia.Lowman@gmail.com",
					password: 'NPCpassword')
user7 = User.create(name: "Adelina Soller", 
					home_address: "486 6th Ave, Brooklyn, NY 11215", 
					work_address: "63 W 37th St, New York, NY 10018",
					email: "Adelina.Soller@gmail.com",
					password: 'NPCpassword')
user8 = User.create(name: "Euna Straka", 
					home_address: "188 Woodpoint Rd, Brooklyn, NY 11211", 
					work_address: "300 W 49th St, New York, NY 10019",
					email: "Euna.Straka@gmail.com",
					password: 'NPCpassword')
user9 = User.create(name: "Camilla Paquin", 
					home_address: "1002 Halsey St, Brooklyn, NY 11207", 
					work_address: "1071 5th Ave, New York, NY 10128",
					email: "Camilla.Paquin@gmail.com",
					password: 'NPCpassword')
user10 = User.create(name: "Ben Hickson", 
					home_address: "54 Noll St, Brooklyn, NY 11206", 
					work_address: "457 3rd Ave, Brooklyn, NY 11215",
					email: "bzhickson@gmail.com",
					password: 'password')
user11 = User.create(name: "Blaine Taft", 
					home_address: "722 Nostrand Ave, Brooklyn, NY 11216", 
					work_address: "88 Liberty View Dr, Jersey City, NJ 07302",
					email: "Blaine.Taft@gmail.com",
					password: 'NPCpassword')

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
Membership.create(group: group3, user: user10)
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
							location_type: location_type2,
							file: "thedeadrabbit.jpeg"
                            )

location2 = Location.create(address: "372 Lafayette St, New York, NY 10012", 
                            name: "Atla",
                            price_in_dollar_signs: 2,
							location_type: location_type3,
							file: "atla.jpeg"
                            )

location3 = Location.create(address: "310 W 40th St, New York, NY 10018", 
                            name: "Dear Irving",
                            price_in_dollar_signs: 3,
							location_type: location_type2,
							file: "dearirving.jpeg"
                            )

location4 = Location.create(address: "722 Nostrand Ave, Brooklyn, NY 11216", 
                            name: "Super Power",
                            price_in_dollar_signs: 2,
							location_type: location_type2,
							file: "superpower.jpeg"
                            )

location5 = Location.create(address: "348 Wythe Ave, Brooklyn, NY 11249", 
                            name: "Sunday In Brooklyn",
                            price_in_dollar_signs: 2,
							location_type: location_type3,
							file: "sundayinbrooklyn.jpeg"
							)

location6 = Location.create(address: "152-12 Northern Blvd, Flushing, NY 11354", 
                            name: "Jeong Yook NY",
                            price_in_dollar_signs: 2,
							location_type: location_type3,
							file: "jeongyookny.jpeg"
							)
							
location7 = Location.create(address: "307 5th Ave, New York, NY 10016", 
                            name: "Let's Meat BBQ",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "letsmeatbbq.jpeg"
							)			

location8 = Location.create(address: "8 Extra Pl, New York, NY 10003", 
                            name: "Momofuku Ko",
                            price_in_dollar_signs: 3,
                            location_type: location_type3,
							file: "momofukuko.jpeg"
							)

location9 = Location.create(address: "155 W 51st St, New York, NY 10019", 
                            name: "Le Bernardin",
                            price_in_dollar_signs: 3,
                            location_type: location_type3,
							file: "lebernardin.jpeg"
							)

location10 = Location.create(address: "337 3rd Ave, New York, NY 10010", 
                            name: "AWOL Bar & Grill",
                            price_in_dollar_signs: 2,
                            location_type: location_type2,
							file: "awolbar_grill.jpeg"
							)

location11 = Location.create(address: "294 3rd Ave, New York, NY 10010", 
                            name: "Ampersand",
                            price_in_dollar_signs: 2,
                            location_type: location_type2,
							file: "ampersand.jpeg"
							)

location12 = Location.create(address: "2501 40th Ave, Queens, NY 11101", 
                            name: "House of Thai",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "houseofthai.jpeg"
							)

location13 = Location.create(address: "41-17 Crescent St, Long Island City, NY 11101", 
                            name: "Oro",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "oro.jpeg"
							)
							
location14 = Location.create(address: "46 Bowery, New York, NY 10013", 
                            name: "Joe's Shanghai",
                            price_in_dollar_signs: 1,
                            location_type: location_type3,
							file: "joesshanghai.jpeg"
							)

location15 = Location.create(address: "21 Mott St, New York, NY 10013", 
                            name: "Shanghai 21",
                            price_in_dollar_signs: 1,
                            location_type: location_type3,
							file: "shanghai21.jpeg"
							)

location16 = Location.create(address: "176 Mulberry St, New York, NY 10013", 
                            name: "Mulberry Street Bar",
                            price_in_dollar_signs: 2,
                            location_type: location_type2,
							file: "mulberrystreetbar.jpeg"
							)

location17 = Location.create(address: "127 Mulberry St, New York, NY 10013", 
                            name: "Casa Bella",
                            price_in_dollar_signs: 3,
                            location_type: location_type2,
							file: "casabella.jpeg"
							)

location18 = Location.create(address: "99 Church St, New York, NY 10007", 
                            name: "CUT by Wolfgang Puck",
                            price_in_dollar_signs: 3,
                            location_type: location_type3,
							file: "cutbywolfgangpuck.jpeg"
							)

location19 = Location.create(address: "351 5th Ave, Brooklyn, NY 11215", 
                            name: "Mori",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "mori.jpeg"
							)

location20 = Location.create(address: "733 Fulton St, Brooklyn, NY 11217", 
                            name: "Black Forest",
                            price_in_dollar_signs: 2,
                            location_type: location_type2,
							file: "blackforest.jpeg"
							)


location21 = Location.create(address: "236 W 56th St, New York, NY 10019", 
                            name: "Patsy's",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "patsys.jpeg"
							)


location22 = Location.create(address: "228 W 52nd St, New York, NY 10019", 
                            name: "Gallaghers Steakhouse",
                            price_in_dollar_signs: 4,
                            location_type: location_type3,
							file: "gallagherssteakhouse.jpeg"
							)


location23 = Location.create(address: "158 E 48th St, New York, NY 10017", 
                            name: "The Sea Fire Grill",
                            price_in_dollar_signs: 3,
                            location_type: location_type3,
							file: "theseafiregrill.jpeg"
							)


location24 = Location.create(address: "352 Bedford Ave, Brooklyn, NY 11249", 
                            name: "Rabbithole",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "rabbithole.jpeg"
							)


location25 = Location.create(address: "81 Washington St, Brooklyn, NY 11201", 
                            name: "Westville",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "westville.jpeg"
							)


location26 = Location.create(address: "38 MacDougal St, New York, NY 10012", 
                            name: "Shuka",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "shuka.jpeg"
							)


location27 = Location.create(address: "171 Lafayette Ave, Brooklyn, NY 11238", 
                            name: "Olea",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "olea.jpeg"
							)


location28 = Location.create(address: "137 Sullivan St, New York, NY 10012", 
                            name: "west~bourne",
                            price_in_dollar_signs: 1,
                            location_type: location_type3,
							file: "west-bourne.jpeg"
							)


location29 = Location.create(address: "180 Spring St, New York, NY 10012", 
                            name: "Bistro Les Amis",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "bistrolesamis.jpeg"
							)

location30 = Location.create(address: "359 W Broadway, New York, NY 10013", 
                        name: "Cupping Room Cafe",
                            price_in_dollar_signs: 2,
                            location_type: location_type3,
							file: "cuppingroomcafe.jpeg"
							)

Meetup.create(location: location1, group: group1, date: Time.new(2020, 04, 05),
			  average_additional_commute_time: 15.24, status: 1)
Meetup.create(location: location3, group: group1, date: Time.new(2020, 03, 20),
			  average_additional_commute_time: 37.27, status: 0)
Meetup.create(location: location5, group: group1, date: Time.new(2020, 04, 11),
			  average_additional_commute_time: 16.43, status: 1)

Meetup.create(location: location2, group: group2, date: Time.new(2020, 04, 07),
			  average_additional_commute_time: 18.756, status: 1)
Meetup.create(location: location4, group: group2, date: Time.new(2020, 03, 29),
			  average_additional_commute_time: 29.436, status: 1)
Meetup.create(location: location1, group: group2, date: Time.new(2020, 04, 05),
			  average_additional_commute_time: 47.1324, status: 1)

Meetup.create(location: location3, group: group3, date: Time.new(2020, 04, 02),
			  average_additional_commute_time: 12.765, status: 1)
Meetup.create(location: location2, group: group3, date: Time.new(2020, 03, 18),
			  average_additional_commute_time: 23.223, status: 1)
Meetup.create(location: location5, group: group3, date: Time.new(2020, 04, 15),
			  average_additional_commute_time: 35.32113, status: 0)
