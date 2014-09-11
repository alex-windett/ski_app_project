# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1 =Country.create(name: "France")
c2 =Country.create(name: "Austria")
c3 =Country.create(name: "Italy")
c4 =Country.create(name: "Switzerland") 
c5 =Country.create(name: "Germany")
c6 =Country.create(name: "Spain")
c7 =Country.create(name: "Japan")
c8 =Country.create(name: "Canada")
c9 =Country.create(name: "US")

r1 = Resort.create(name: "Val d'Isere", description: "Cool Resort in France")
r2 = Resort.create(name: "Meribel", description: "")
r3 = Resort.create(name: "Zermatt", description: "")
r4 = Resort.create(name: "Arose", description: "")
r5 = Resort.create(name: "Sqaw Vally", description: "")
r6 = Resort.create(name: "Lech", description: "")
r7 = Resort.create(name: "St Anton", description: "")
r8 = Resort.create(name: "Zurs", description: "")
r9 = Resort.create(name: "Verbier", description: "")
r10 = Resort.create(name: "Kyushu", description: "")
r11 = Resort.create(name: "Hokkaido", description: "")
r12 = Resort.create(name: "Revelstoke", description: "")
r13 = Resort.create(name: "Whistler", description: "")
r14 = Resort.create(name: "Banff", description: "")
r15 = Resort.create(name: "Jackson Hole", description: "")
r16 = Resort.create(name: "Aspen", description: "")
r17 = Resort.create(name: "Sierra Nevada", description: "")

c1.resorts << r1
c1.resorts << r2
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
