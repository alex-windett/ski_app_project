# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.destroy_all
Resort.destroy_all

u1 = User.create(name: "Alex", email: "a@a.com", password:"password", password_confirmation: "password", role: "admin")

c1 =Country.create(name: "France")
c2 =Country.create(name: "Austria")
c3 =Country.create(name: "Italy")
c4 =Country.create(name: "Switzerland") 
c5 =Country.create(name: "Germany")
c6 =Country.create(name: "Spain")
c7 =Country.create(name: "Japan")
c8 =Country.create(name: "Canada")
c9 =Country.create(name: "US")

r1 = Resort.create(name: "Val d'Isere", description: "One of the world's premier ski resorts, Val d'Isère is hard to fault, offering some of France’s best skiing conditions together with an exciting après scene. The resort links to Tignes and forms the Espace Killy, one of the most varied ski areas in Europe. It’s a true skier’s paradise that offers something for every ability level, from absolute beginner up to advanced skiers. Off the slopes the nightlife is hard to beat with lively pubs to enjoy the famous après scene, chic bars for a cocktail and a couple of nightclubs where you can get your groove on.
You can make the most of plenty of dining options in Val d'Isère. Choose between traditional Savoyard restaurants, fancy bistros or the more comfortable (and affordable) restaurants and pubs serving all types of everyday food from all over the world. Accommodation in Val d'Isère - as with eating out and partying - is fairly pricey, but you are paying to be in one of the world’s most famous ski resorts.
Although there are cruisey blues and beginner areas, the skiing is most suited to advanced skiers, who will enjoy the many challenging pistes and the famous off-piste opportunities. The Val d'Isère calendar is packed full of all sorts of events and festivals happening at the foot of the slopes, mainly including fireworks and competitions. Val d'Isère is a destination that really does have it all – amenities, world-class skiing and an enviable nightlife.", image: "assets/home1.png")
r2 = Resort.create(name: "Meribel", description: "")
r3 = Resort.create(name: "Zermatt", description: "The mountain village of Zermatt is one of the great ski and climbing centres of the world. Nestled in a deep valley enclosed between steeply scarped mountains, it is dominated by the huge and gracefully curved pyramid of the Matterhorn.
From the moment you step off your Swiss-red train, and catch sight of the cobbled streets and horses with sleighs patiently waiting for their rides, you know you are in a special place. What strikes me most often is the silence. There are no cars here. This immediately creates a welcoming atmosphere. The air is fresh and alpine. But more than this, you immediately feel a part of the village. It draws you in. Most everyone is on foot, locals and visitors alike. The main street bustles happily with pedestrians. There are no impersonal tour buses belching out noise, fumes, and package tourists. Zermatt is no auto through-route. The train stops here. All journeys on from here are on foot or ski. Everyone is here because they love mountains. Walking through the cobbled paths of town, between the ancient sunburnt barns and chalets, you catch your first glimpse of the Matterhorn and know you have come to the right place. Welcome to Zermatt...")
r4 = Resort.create(name: "Arosa", description: "")
r5 = Resort.create(name: "Squaw Vally", description: "")
r6 = Resort.create(name: "Lech", description: "Whilst our traditional Walser village hasn’t sacrificed any of its original character, guests visiting Lech Zürs am Arlberg will find everything the modern world has to offer,” Tourism Director Hermann Fercher describes the interplay of genuine tradition and progressive hospitality in the Arlberg community located at 1,450 metres above sea level. The summer season lasts until 5 October 2014!")
r7 = Resort.create(name: "St Anton", description: "")
r8 = Resort.create(name: "Zurs", description: "")
r9 = Resort.create(name: "Verbier", description: "")
r10 = Resort.create(name: "Kyushu", description: "")
r11 = Resort.create(name: "Hokkaido", description: "")
r12 = Resort.create(name: "Revelstoke", description: "")
r13 = Resort.create(name: "Whistler", description: "Since its opening in 1926, Mt. Norquay continues to be the locals’ gem. Famous for being the training ground of Olympic and World Cup athletes, and with excellent beginner terrain, everyone will love this small, family-friendly resort.
Just minutes from the Town of Banff, Mt. Norquay offers the only night skiing in Banff-Lake Louise, including a fully lit terrain park, and expert snowmaking on 85% of the terrain. Family-friendly Mt. Norquay offers outstanding conditions for beginner, intermediate and advanced skiers and riders. This is the best-kept secret in the Canadian Rockies!")
r14 = Resort.create(name: "Banff", description: "")
r15 = Resort.create(name: "Jackson Hole", description: "")
r16 = Resort.create(name: "Aspen", description: "")
r17 = Resort.create(name: "Sierra Nevada", description: "")

c1.resorts << r1
c1.resorts << r2
c4.resorts << r3
c2.resorts << r6
c2.resorts << r7
c2.resorts << r8
c3.resorts << r4
c4.resorts << r4
c4.resorts << r9
c6.resorts << r17
c7.resorts << r10
c7.resorts << r11
c8.resorts << r12
c8.resorts << r13
c8.resorts << r5
c9.resorts << r14
c9.resorts << r15
c9.resorts << r16
