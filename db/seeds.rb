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
Although there are cruisey blues and beginner areas, the skiing is most suited to advanced skiers, who will enjoy the many challenging pistes and the famous off-piste opportunities. The Val d'Isère calendar is packed full of all sorts of events and festivals happening at the foot of the slopes, mainly including fireworks and competitions. Val d'Isère is a destination that really does have it all – amenities, world-class skiing and an enviable nightlife.", image: File.open("#{Rails.root}/app/assets/images/val.png"))
r2 = Resort.create(name: "Meribel", description: "Méribel resort offers much more than “just” alpine skiing and snowboarding! Countless activities for you and your family are listed in this section of our website.
  To help you choose the best equipment and ski passes, we have listed our partner shops and created a comprehensive list of the passes you can buy when you get here or online before you even leave your home. That way, on arrival, you can get straight onto the slopes!
  Enjoy your holidays in Méribel!", image: File.open("#{Rails.root}/app/assets/images/meribel.png"))
r3 = Resort.create(name: "Zermatt", description: "The mountain village of Zermatt is one of the great ski and climbing centres of the world. Nestled in a deep valley enclosed between steeply scarped mountains, it is dominated by the huge and gracefully curved pyramid of the Matterhorn.
From the moment you step off your Swiss-red train, and catch sight of the cobbled streets and horses with sleighs patiently waiting for their rides, you know you are in a special place. What strikes me most often is the silence. There are no cars here. This immediately creates a welcoming atmosphere. The air is fresh and alpine. But more than this, you immediately feel a part of the village. It draws you in. Most everyone is on foot, locals and visitors alike. The main street bustles happily with pedestrians. There are no impersonal tour buses belching out noise, fumes, and package tourists. Zermatt is no auto through-route. The train stops here. All journeys on from here are on foot or ski. Everyone is here because they love mountains. Walking through the cobbled paths of town, between the ancient sunburnt barns and chalets, you catch your first glimpse of the Matterhorn and know you have come to the right place. Welcome to Zermatt...", image: File.open("#{Rails.root}/app/assets/images/zermatt.png"))
r4 = Resort.create(name: "Arosa", description: "In recent years, the fashion in skiing has been for travelling to mega-resorts – those offering hundreds of miles of pistes served by dozens of lifts. That's great if you have at least a week to explore, and the money to pay for the invariably premium-rate ski passes. But for a short break, you don't need endless pistes; you need easy access, a nice place to stay, and enough variety to keep you going for two or three days.
Switzerland's smaller mountain villages work brilliantly for this type of holiday, and none more so than Arosa, a compact, neatly formed resort in the Graubünden mountains, a couple of hours south of Zurich. It's set in a natural bowl, well above the treeline and surrounded by a spectacular series of high ridges. There's a great mix of reds and blues (plus a few challenging blacks) from the top of several of the 13 lifts, so that it works well for parties of mixed abilities. (And if you don't want to ski, there are 30 miles of winter rambling routes for walkers.)", image: File.open("#{Rails.root}/app/assets/images/arosa.png"))
r5 = Resort.create(name: "Squaw Vally", description: "Built in the image of a European style mountain village and host of the Winter Olympic games in 1960, Squaw Valley's 3,600 acres of award winning terrain accommodates skiers and riders of all ages and abilities.
Located at the end of the Sierra Nevada on the west side of Lake Tahoe, Squaw Valley averages 450 inches of snow annually across six mountain peaks including Snow King, Broken Arrow, KT-22, Emigrant, Squaw Peak, and Granite Chief.
The 2,800 feet of vertical are serviced by 29 lifts total and Squaw is home to the only Funitel, a 28-person gondola, in North America. From the mountaintop beginner area to the expert steeps, trees, and bowls, skiers and riders are sure to find the perfect challenge.", image: File.open("#{Rails.root}/app/assets/images/squaw.png"))
r6 = Resort.create(name: "Lech", description: "Whilst our traditional Walser village hasn’t sacrificed any of its original character, guests visiting Lech Zürs am Arlberg will find everything the modern world has to offer,” Tourism Director Hermann Fercher describes the interplay of genuine tradition and progressive hospitality in the Arlberg community located at 1,450 metres above sea level. The summer season lasts until 5 October 2014!", image: File.open("#{Rails.root}/app/assets/images/lech.png"))
r7 = Resort.create(name: "St Anton", description: "St Anton is rated among the top five resorts in the Alps for very good reason: located in Austria’s Arlberg region, one of Europe’s snowiest areas (remember the place where everybody was gleefully snowed in a couple of years ago), it boasts 340km of pistes, 180km of off-piste itineraries and over 55km² of challenging off-piste terrain. In addition, it has a highly efficient lift system and an attractive town bursting with stylish hotels, chalets and restaurants.", image: File.open("#{Rails.root}/app/assets/images/anton.png"))
r8 = Resort.create(name: "Zurs", description: "The Austrian Ski Resort of Zürs is part of the Arlberg ski area with access to 248 individual pistes. In addition to the skiing in Zürs itself (110km of pisted ski runs), the appropriate ski Lift Pass will allow you to ski or snowboard in the other Arlberg ski resorts of Lech, St. Anton am Arlberg, St Christoph am Arlberg and Stuben. The ski resort itself is above 1500m, so skiing or boarding back to the resort is usually possible. With skiing above 2000 metres, snow cover is generally reliable.", image: File.open("#{Rails.root}/app/assets/images/zurs.png"))
r9 = Resort.create(name: "Verbier", description: "Verbier’s ski domain ranges from 1500m (Verbier Village) up to 3330m (Mont Fort) from which there is a panoramic view of the Alps encompassing the Matterhorn Cervin, Dom, Dent Blanche, Dent d'Hérens, Grand Combin and Mont Blanc massif. It is part of the 'Four Valleys' ski area, which includes the ski resorts of Verbier, Nendaz, Veysonnaz, La Tzoumaz, and Thyon with a total of 410 km marked runs. 
The ski area is divided into four sectors: Medran, Les Savoleyres, Mont Fort and Bruson. Verbier forms the western section of the 4 Valleys ski area. A 4 Valley pass allows a tour all the way from Verbier to La Tzoumaz, Nendaz, Veysonnaz, Les Masses, Thyon and back.", image: File.open("#{Rails.root}/app/assets/images/verbier.png"))
r10 = Resort.create(name: "Kyushu", description: " the summer months, Kyushu is undeniably an extremely hot island, however such is the radical change in climate from summer to winter, that while the summer brings long days at the beach, so does the winter bring long days on the ski slopes!
We do have to travel into the centre of Kyushu to access the resorts, but if we make our way to Nagasaki, Oita or Kumamoto, then we can round off a day of skiing or snowboarding(or even sledging!)  with a trip to a local onsen.
Check out the ski resorts at Tenzan in Nagasaki or Kokonoe Ski resort in Oita to get you started.", image: File.open("#{Rails.root}/app/assets/images/japan.png"))
r11 = Resort.create(name: "Hokkaido", description: "Hokkaido skiing is incredibly rewarding for powder hounds. Hokkaido, the north island of Japan, is geographically ideally located in the path of consistent weather systems that bring the cold air across the Sea of Japan from Siberia. This results in many of the resorts being absolutely dumped with powder that is renowned for being incredibly dry. Some of the Hokkaido ski resorts receive an amazing average of 14-18 metres of snowfall annually! 
", image: File.open("#{Rails.root}/app/assets/images/hokaido.png"))
r12 = Resort.create(name: "Revelstoke", description: "For decades, helicopter and cat skiers from around the world have flocked to Revelstoke, BC, attracted by its perfect powder, varied alpine terrain and quaint mountain community.
Selkirk Tangiers Heli Skiing was the company of choice for guests who wanted the ultimate heli ski vacation, with over 50 feet of annual snow, 200,000 hectares (500,000 acres) of exclusive terrain and a long family history of guiding excellence.
Now, in addition to Selkirk Tangiers Heli Skiing, there is another way to ski or snowboard Revelstoke's epic terrain - at Revelstoke Mountain Resort (RMR).", image: File.open("#{Rails.root}/app/assets/images/revelstoke.png"))
r13 = Resort.create(name: "Whistler", description: "Since its opening in 1926, Mt. Norquay continues to be the locals’ gem. Famous for being the training ground of Olympic and World Cup athletes, and with excellent beginner terrain, everyone will love this small, family-friendly resort.
Just minutes from the Town of Banff, Mt. Norquay offers the only night skiing in Banff-Lake Louise, including a fully lit terrain park, and expert snowmaking on 85% of the terrain. Family-friendly Mt. Norquay offers outstanding conditions for beginner, intermediate and advanced skiers and riders. This is the best-kept secret in the Canadian Rockies!", image: File.open("#{Rails.root}/app/assets/images/whistler.png"))
r14 = Resort.create(name: "Banff", description: "Banff is nothing like your typical ski resort. We enjoy its restaurants and bars, but not the daily commuting to Sunshine Village or Lake Louise (dealt with separately). Even the small local hill, Norquay, is a bus ride out of town.
The alternative is to stay a few nights mid-mountain at Sunshine Village and a few at Lake Louise. Lake Louise also has the advantage of being much closer to Kicking Horse, which makes a great day trip for powderhounds.", image: File.open("#{Rails.root}/app/assets/images/banff.png"))
r15 = Resort.create(name: "Jackson Hole", description: "More than 25 years ago, few people in Britain had heard of what is now the cult ski area of Jackson Hole. Tucked into the top left-hand corner of Wyoming, America, with a magnificent Teton mountain range backdrop, it is now one of North America's foremost resorts. Over the last decade, Jackson Hole has invested heavily in new facilities, lifts and terrain upgrades aimed at intermediates. Last year, readers of America's Ski Magazine ranked the resort top in three significant categories: overall satisfaction, character and most challenging terrain. It was also voted the sixth best overall resort in North America, its highest ranking ever.", image: File.open("#{Rails.root}/app/assets/images/jackson.png"))
r16 = Resort.create(name: "Aspen", description: "Aspen is one of the all time great ski destinations. Four resorts each very different, between them having terrain to suit all preferences and abilities. Aspen is a vibrant American town with boutiques, fine dining and trendy bars intermixed with ski shops, well priced restaurants and pubs. Aspen Mountain has superb intermediate and advanced terrain which runs into the heart of the town. Snowmass resort sits 15 minutes shuttle away at the other end of the four mountains, offering large and varied terrain with a ski-in/ski-out village popular with families.", image: File.open("#{Rails.root}/app/assets/images/aspen.png"))
r17 = Resort.create(name: "Sierra Nevada", description: "There are few places in the world where you can ski in the morning then head to the coast for a swim in the afternoon, but the proximity of Sierra Nevada to the Med allows this. Don't be fooled into thinking that the skiing will be second rate either. 20 lifts serve 100 km of piste at the Sierra Nevada but it can get busy at the weekends with bottlenecks at the lifts. The pistes lend themselves to the intermediate but there is ample off-piste skiing for the advanced riders. Off the pistes, there are some good restaurants and lively bars. If you get bored or the snow is not as good in the Sierra Nevada, just head for a beach! A halfpipe was added to the snowpark Salayr in 2011 (165m long and 6m high). It is the biggest in Spain. The snow junior world championship was celebrated in this park.", image: File.open("#{Rails.root}/app/assets/images/sierra.png"))

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
