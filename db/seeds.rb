# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Category.destroy_all
camping = Category.create(name: "Camping") #
fishing = Category.create(name: "Fishing") #
skiing = Category.create(name: "Skiing") #
climbing = Category.create(name: "Climbing") #
biking = Category.create(name: "Biking") #
running = Category.create(name: "Running") #
first_aid = Category.create(name: "First Aid") #
archery = Category.create(name: "Archery") # 
kayaking = Category.create(name: "Kayaking") #
clothing = Category.create(name: "Clothing") #


camping.items.create(name: "TR3 Freestanding Tent", price:"100.0", description: "This tent is great for backpacking", condition: "new")
camping.items.create(name: "Wood and Charcoal Burning Camp Fire Pit" , price:"174.99", description: "Burns like a charm", condition: "new")
camping.items.create(name: "Fusion Solar Oven", price:"83.25", description: "Elevate your backpacking game with this oven.", condition: "new")
camping.items.create(name: "Recliner Luxury Camp Chair", price:"23.54", description: "This trusty chair will make you a happy camper every time.", condition: "used")
camping.items.create(name: "600 Camping Lantern", price:"70.00", description: "Long battery life and really bright.", condition: "new")
camping.items.create(name: "Gerber Truss Multi-Tool", price:"26.00", description: "Not just one Gerber Truss tool, but many", condition: "new")
camping.items.create(name: "All-Terrain Crocs", price:"62.32", description: "These crocs will take you on all sorts of adventures if you let them.", condition: "used")
camping.items.create(name: "Picking shorts", price:"125.36", description: "These are great for hot days.", condition: "new")
camping.items.create(name: "Hammock", price:"5.00", description: "Relax between two trees!", condition: "used")
camping.items.create(name: "Hand Warmer", price:"42.01", description: "Must have for cold campers.", condition: "new")

biking.items.create(name: "Giant Mountain Bike", price:"499.99", description: "Giant branded mountain bike with new tires", condition: "new")
biking.items.create(name: "Trek Road Bike", price:"199.99", description: "Older bike that still works great", condition: "used")
biking.items.create(name: "Specialized Road Bike", price:"399.00", description: "Great bike. New gears, tires, and never wrecked", condition: "used")
biking.items.create(name: "Cannondale Mountain Bike", price:"235.00", description: "Used bike for sale", condition: "used")
biking.items.create(name: "Helmet", price:"25.60", description: "Kids helmet size 6", condition: "new")
biking.items.create(name: "Bike Pump", price:"65.90", description: "Works good", condition: "used")
biking.items.create(name: "Tire Patch Kit", price:"55.00", description: "Brand new in box", condition: "new")
biking.items.create(name: "Headlight", price:"37.99", description: "4 brightness setting including red light", condition: "new")
biking.items.create(name: "Bell", price:"6.00", description: "Rings", condition: "used")
biking.items.create(name: "Handlebar GPS", price:"275.50", description: "Garmin GPS bought but didn’t need. My loss is your gain.", condition: "new")

fishing.items.create(name: "Johnny Morris CarbonLite 2.0 Baitcast Reel", price:"130.00", description: "One of the best baitcast reels ever!", condition: "new")
fishing.items.create(name: "Valkyrie rod pro", price:"25.36", description: "Great rod. Does the job.", condition: "new")
fishing.items.create(name: "Worm killer hooks", price:"1.25", description: "Name says it all!", condition: "used")
fishing.items.create(name: "Stink bate", price:"0.99", description: "Fish love this stuff.", condition: "new")
fishing.items.create(name: "Eraser jigs", price:"6.29", description: "These are some top notch eraser jigs.", condition: "used")
fishing.items.create(name: "Fish net", price:"44.28", description: "Professional grade net.", condition: "new")
fishing.items.create(name: "Ice augers", price:"15.36", description: "You will need these when it gets icy.", condition: "used")
fishing.items.create(name: "Thermal underwear", price:"53.26", description: "The comfiest thermal underwear ever!", condition: "used")
fishing.items.create(name: "Sonar", price:"89.23", description: "Give yourself a head start on fish finding.", condition: "new")
fishing.items.create(name: "Lew's Tournament XP Baitcast Reel", price:"186.00", description: "The hottest baitcast reel since the Johnny Morris CarbonLite 2.0.", condition: "new")

skiing.items.create(name: "Atomic VANTAGE Skis", price:"399.99", description: "Brand new still in box", condition: "new")
skiing.items.create(name: "Women's Skis", price:"750.00", description: "Line Pandora skis. Backcountry or resort", condition: "new")
skiing.items.create(name: "Women's ski boots", price:"85.99", description: "Wear and tear in the middle but still good", condition: "used")
skiing.items.create(name: "Flat Skis ", price:"50.00", description: "Great for racing!", condition: "used")
skiing.items.create(name: "Head Monster Skis", price:"279.99", description: "Great for carving the edges", condition: "new")
skiing.items.create(name: "Snow pants", price:"144.00", description: "Awesome snow pants for the slopes", condition: "new")
skiing.items.create(name: "Hawx Ski Boots", price:"219.99", description: "Light and Streamline", condition: "used")
skiing.items.create(name: "Jacket", price:"324.50", description: "Sentinel jacket. Perfect for Xmas!", condition: "new")
skiing.items.create(name: "Race Skis", price:"20.00", description: "Minimal wear, only used a few times", condition: "used")
skiing.items.create(name: "Goggles", price:"200.50", description: "Polarized! Ready for another winter", condition: "new")

running.items.create(name: "Women's Running Shoes", price:"100.00", description: "Asics, Pink", condition: "New")
running.items.create(name: "Men's Nike Renew", price:"75.00", description: "Marathon running shoes", condition: "Good")
running.items.create(name: "Running Shorts", price:"20.99", description: "Nike size S", condition: "Like New")
running.items.create(name: "Windbreaker", price:"75.50", description: "Great for chilly mornings", condition: "Very Good")
running.items.create(name: "HI TEC running shoes", price:"20.00", description: "Gently worn, size 7.5 womens", condition: "Fair")
running.items.create(name: "Running Pack", price:"10.00", description: "Has a small hole in the side, but works great", condition: "Fair")
running.items.create(name: "Water Bottles", price:"25.99", description: "25 for sale, take your pick for 25.99", condition: "Like New")
running.items.create(name: "Puma Paize", price:"35.99", description: "running shoes 4 sale", condition: "Very Good")
running.items.create(name: "Baby's Running Shoes", price:"13.00", description: "Size 1 infants", condition: "Fair")
running.items.create(name: "Men's Gel Runners", price:"17.99", description: "Well worn", condition: "Poor")

archery.items.create(name:"Bow", price:15.98, description:"Bow", condition:"new" )
archery.items.create(name:"Arrow",  price:4.63,	  description:"10 pack",  condition:"new" )
archery.items.create(name:"Nock",  price:4.26,  description:"Nock",  condition:"used" ) 
archery.items.create(name:"Chestgard",  price:5.26,  description:"Chestgard",   condition:"used" )
archery.items.create(name:"Bowstring",   price:6.23,  description:"Bowstring",  condition:"new" )
archery.items.create(name:"Finger tab",  price:5.76,  description:"Finger tab",  condition:"new" )
archery.items.create(name:"Bird feathers",   price:6.14,  description:"Bird feathers",  condition:"new" )
archery.items.create(name:"Bracer",  price:45.23,  description:"Bracer",  condition:"new" )
archery.items.create(name:"High heal boots",  price:15.23,  description:"High heal boots",  condition:"new" )
archery.items.create(name:"Protective Cup",   price:5.23,  description:"extra small",  condition:"used" )

first_aid.items.create(name:"Band adds extra small", price:"1.06", description:"Band adds extra small", condition:"new")
first_aid.items.create(name:"Rubber gloves ", price:"3.95", description:"Rubber gloves", condition:"new")
first_aid.items.create(name:"Masks ex large", price:"14.03", description:"Masks ex large", condition:"new")
first_aid.items.create(name:"Tourniquet ", price:"5.95", description:"Tourniquet", condition:"used")
first_aid.items.create(name:" Gauze ", price:"3.59", description:" Gauze", condition:"new")
first_aid.items.create(name:"Medical tape", price:"53.26", description:"Medical tape", condition:"new")
first_aid.items.create(name:"Splint", price:"12.36", description:"Splint", condition:"used")
first_aid.items.create(name:"Bandages ", price:"75.26", description:"Bandages", condition:"used")
first_aid.items.create(name:"Floss", price:"3.75", description:"Floss", condition:"used") 	
first_aid.items.create(name:"Supper glue", price:"2.78", description:"Supper glue", condition:"new")
  
kayaking.items.create(name:"Kayak two person ", price:"399.45", description:"Kayak two person", condition:"new")
kayaking.items.create(name:"Canoe paddle", price:"24.99", description:"Canoe paddle", condition:"new")		
kayaking.items.create(name:"Stand up paddlebord", price:"449.42", description:"Stand up paddlebord", condition:"new")
kayaking.items.create(name:"Dry bag ", price:"17.99", description:"Dry bag", condition:"new")	
kayaking.items.create(name:"Anchor ", price:"15.26", description:"Anchor", condition:"used")
kayaking.items.create(name:"Inflatable roof rack ", price:"365.28", description:"Inflatable roof rack", condition:"used")
kayaking.items.create(name:"Led life vest", price:"123.58", description:"Led life vest", condition:"used")
kayaking.items.create(name:"Fish  cologne extra stink ", price:".03", description:"Fish  cologne extra stink ", condition:"new")
kayaking.items.create(name:"Rope ", price:"12.46", description:"Rope ", condition:"new")
kayaking.items.create(name:"Towel", price:"15.24", description:"Towel", condition:"new")

clothing.items.create(name:"Mens jacket", price:"135.26", description:"Mens jacket", condition:"new")
clothing.items.create(name:"Mens Skirt", price:"12.63", description:"Mens Skirt", condition:"used")
clothing.items.create(name:"Rain Suit", price:"14.89", description:"Rain Suit", condition:"new")
clothing.items.create(name:"Hoodie", price:"55.00", description:"Hoodie", condition:"new")
clothing.items.create(name:"long sleeve shirt", price:"17.25", description:"long sleeve shirt", condition:"new")
clothing.items.create(name:"Hook Cap", price:"25.00", description:"Hook Cap", condition:"new")
clothing.items.create(name:"T-shirt", price:"19.55", description:"t-shirt", condition:"new")
clothing.items.create(name:"Shorts", price:"159.00", description:"Shorts", condition:"new")
clothing.items.create(name:"Season Bib", price:"289.30", description:"Season Bib", condition:"new")
clothing.items.create(name:"Long sleave Jacket", price:"60.00", description:"Long sleave Jacket", condition:"used")

climbing.items.create(name:"Chalk", price:"23.00", description:"Chalk", condition:"new")
climbing.items.create(name:"Rope", price:"86.23", description:"5 Foot", condition:"new")
climbing.items.create(name:"Crampons", price:"53.53", description:"Crampons", condition:"new")
climbing.items.create(name:"Sunscreen", price:"19.50", description:"Sunscreen", condition:"new")
climbing.items.create(name:"Water bottle", price:"18.00", description:"Water bottle", condition:"new")
climbing.items.create(name:"Helmet", price:"43.26", description:"Helmet", condition:"new")
climbing.items.create(name:"Carabiners", price:"89.25", description:"Carabiners", condition:"new")
climbing.items.create(name:"Sling", price:"45.21", description:"Sling", condition:"new")
climbing.items.create(name:"Belay device", price:"23.98", description:"Belay device", condition:"used")
climbing.items.create(name:"Back Pack", price:"123.53", description:"Back Pack", condition:"new")

Job.create(title: "Bicycle Your Guide", company: "Escapes", salary: 54000)
Job.create(title: "Running Footware Buyer", company: "Running Center", salary: 60000)
Job.create(title: "Dog Walker", company: "Dogs, Dogs, Dogs", salary: 28000)
Job.create(title: "Trip Leader", company: "Cooks Summer Camp", salary: 18000)
Job.create(title: "Offroad Guide", company: "Extreme Adventures", salary: 45000)
Job.create(title: "Camp Counselors", company: "Cooks Summer Camp", salary: 22000)
Job.create(title: "National Park Guide", company: "Utah Parks", salary: 35000)
Job.create(title: "Rafting Guide", company: "Snake River Guides", salary: 50000)
Job.create(title: "Professional Fisher", company: "Steve's Salmon", salary: 55000)
Job.create(title: "Sales Associate", company: "Specialized Cycles", salary: 25000)

Article.create(title:"Skydiving", author:"Speed Racer", body:"No matter how terrifying or adrenaline-packed an activity may be, someone is bound to push the envelope further. This human dynamic is at play in The New York Times’s story on speed skydiving, a niche sport in which participants try to attain the fastest velocity while plummeting to the earth. Skydiving has birthed numerous death-defying subgenres over the years, from BASE jumping and wingsuit jumping to formation skydiving. A typical skydiver may hit 120 miles per hour before deploying the parachute. In speed skydiving, participants regularly surpass 300 mph. Speed skydivers reach this velocity by wearing wind-cheating clothing and gear and by contorting their bodies into aerodynamic postures. It’s a sport that rewards perfection and precision. “If my shoelace comes untied, or if my angle is just one degree off, or if I’m fatigued, I won’t get anywhere close to that top speed,” speed skydiver Kyle Lobpries told the Times. The sport has a long list of dangers and discomforts. A slightly off-kilter posture can cause a diver’s body to violently shake in midair, and a sudden gust of wind or pocket of air can cause a painful and drastic deceleration. Even a flapping zipper can bruise or cut skin. And a speed skydiver has a shorter window in which to deploy her parachute. To nobody’s surprise, speed skydiving was developed in the late 1990s in Florida, where the small city of DeLand claims to be the global capital of skydiving. Speed skydiving’s first World Cup competition was held in 2001. The United States Parachute Association National Championships, held this past October in Arizona, featured a competition for speed. Lobpries won, and he reached 318.74 mph, setting a new world record.",) 
Article.create(title:"This Season’s Hottest Gift? Giving Back", author:"Mad Max Madeline", body:"Not sure what to buy for your friend the gearhead? Tired of exchanging meaningless gifts with relatives? This year, give them the opportunity to give back. Since 2017, through its Parks For All philanthropic arm, Hydro Flask has donated nearly $2 million to 122 nonprofits that in turn have recruited more than 5,000 volunteers to build and maintain trails, pick up garbage (14,000 pounds and counting), and help introduce 41,000 people from marginalized communities to the outdoors. That’s why we teamed up with the brand to help you make this the season of giving back.Make a Donation for a Friend. A map of Parks For All grantees can be found here, but the opportunities to give back to the outdoors are practically endless. The Trust for Public Land is currently running a donation-matching campaign up to $250,000. In the Pacific Northwest the Vamos Outdoor Project is introducing the Latinx and English-as-a-second-language communities to the outdoors. Back east, the Appalachian Trail Conservancy—a beneficiary of a $30,000 grant from Parks For All for its immersive intern program—continues its mission to “protect, manage, and advocate for the Appalachian National Scenic Trail.” Need more ideas? From backcountry skiing to rock climbing to mountain biking, nearly every outdoor sport has a conservation and access nonprofit supporting it. Bottom line: look for organizations or causes you know will resonate with your recipients—and make donations in their names.",)
Article.create(title:"The 2021 Sweat Science Holiday Book List", author:"Asher 'buzzsaw' Bay", body:"ll I want for Christmas is a big snowstorm accompanied by a massive multi-day Internet outage that makes curling up on the sofa with a book the only reasonable option. Here are some titles you might want to stock up on, in case you’re lucky enough to receive that meteorological gift. It’s a mixed list, mostly but not always related to the Sweat Science themes of science, endurance, and health, and mostly but not always published this year.",)
Article.create(title:"German Forrest Gump", author:"John 'Hulk' Leosco", body:"German adventurer Jonas Deichmann deserves a post-race beer. Or 50. On Monday Deichmann rode his bicycle into downtown Munich to complete his round-the-world triathlon, a personal challenge in which he circumnavigated the globe by swimming, biking, and running.The statistics for Deichmann’s journey boggle the mind: he swam 284 miles, biked 13,000, and ran 3,100. The challenge took him 429 days to complete, and the total distance is equivalent to approximately 120 Ironman-length triathlons. “The most important thing: You have to do something that you are passionate about,” Deichmann said in October. “You have to do it with the right motives. And if you have the passion for it and firmly believe that you can, then so much more is possible than you think.” Deichmann’s odyssey included a few deviations due to the pandemic. He began by biking from Germany to Croatia, where he then swam for 54 days along the country’s coastline, towing his belongings in a small raft. After biking to Russia, COVID-19 travel restrictions forced Deichmann to wait near the border for 13 weeks. Russian authorities eventually allowed him into the country, but by then it was winter, and he endured freezing temperatures while biking across Siberia. After arriving in Vladivostok, more travel restrictions upended Deichmann’s plan to take a boat to the United States. Instead, he flew to Mexico and spent a month running the length of the country. Locals dubbed him “the German Forrest Gump,” and video clips showed him accompanied by local runners, armed police officers, and even mariachi band members. When Deichman reached Cancun, he was greeted by fans dressed as Forrest Gump.",)
Article.create(title:"Kids Need the Outdoors", author:"Wile E Coyote", body:"My backyard is littered with art supplies, polished rocks, cardboard boxes, and containers of all sizes. The flower beds are overgrown with massive cucumber plants, spindly rosebushes, and tomatoes that no one remembers planting. A garden gnome guards the compost pile, herding worms to do their job. A tiny My Little Pony stands atop the climbing dome. I sit at the shaded picnic table, amused by the outdoor space my children have created, daydreaming about what our small green space could become, and half out of my mind from fighting off the swarm of mosquitoes. I am not very outdoorsy. But I am a seeker. Since I became a parent eight years ago, I’ve turned again and again to books, to communities, to wiser friends, asking, How can I give my kids a relationship with the outdoors when I barely have one myself? My resources have expanded recently through Tinkergarten, a national outdoor education program that offers classes and at-home projects that encourage kids to play and learn in nature. It was founded in 2012 by former schoolteacher Meghan Fitzgerald and her husband Brian. I discovered Tinkergarten in 2017 through a wildschooling group on Facebook. It came back on my radar at a time when I was desperate for resources to keep my kids busy, but too overwhelmed to come up with ideas on my own: early in the COVID-19 pandemic. By June 2020, my kids had been home all spring, and I wanted anything that could engage them without much cognitive input from me. That’s when Tinkergarten released a free eight-week “summer camp” of virtual programming, exactly what I needed to keep my daughters, age four and seven, busy for part of their long summer days at home. One of the first activities we did for Camp Tinkergarten was collecting nature treasures. My children have always done this naturally—picking a flower, pocketing an interesting rock, transforming the perfect stick into a magic wand. For Camp Tinkergarten, their nature treasures would be the inspiration for art, engineering, and problem-solving activities. I sent the girls on a backyard mission to collect as many nature treasures as they could fit in a shoebox. The oldest returned with rocks and acorns, drawn to compact tokens she could sort by attributes: these are smooth, these are green, these are bumpy. My youngest collected bright green leaves and fistfuls of flowers, saying, “For you, Mommy,” as she tucked them in the treasure box.",)
Article.create(title:"How Increased Outdoor Rec on Tribal Lands Creates Problems", author:"Wacky Duck", body:"Welcome to What You Missed, our daily digest of breaking news and topical perspectives from across the outdoor world. You can also get this news delivered to your email inbox six days a week by signing up for the What You Missed newsletter. Put this feature story by Elizabeth Miller in the Colorado Sun at the top of your reading list. The piece tells the history of the Navajo Rangers, a group that protects the indigenous nation’s cultural and historical places, and it includes multiple hair-raising stories of crimes on tribal lands that the group has investigated over the years. The story includes important reporting on the impacts of hikers, climbers, and other outdoor enthusiasts on tribal lands. Across the country, rural towns and communities see a bump in tax revenue when hikers or cyclists flock to local trails or recreation areas; that’s not always the case on tribal lands, however, where communities generate revenue directly from tribe-owned businesses, like tour companies or gaming. Tribes also do not receive as much federal funding as state parks, national monuments, or other public lands do for protecting some outdoor and cultural sites. And then there’s the constant threat to sacred sites from visitors, many of whom are oblivious to the cultural importance of specific cliffs, rivers, or other features. The uptick in visits to national parks amid the pandemic is mirrored by a surge in visits to tribal lands, even though some areas have been closed to outsiders. For example, climbers frequently ask for access to Tsé Bita’í—a volcanic formation in New Mexico often called Shiprock—even though the Navajo have made it off-limits due to its historic and cultural importance. Other visitors simply sidestep regulations and tribal law enforcement, and hike illegally on protected lands, often leaving behind graffiti and trash. Some tribes find ways to balance the push of recreation with the need to protect sites. The Ute Mountain Ute Tribal Park allows guests to explore infrequently visited canyons in southwestern Colorado, so long as they are accompanied by a Ute guide. There are fears that opening these sites up to recreation puts them in danger of one day being taken by the federal government to become national monuments or other federal protected lands",)
Article.create(title:"Now You Can Wear Your Hunting Gear Every Day", author:"Chuck Norris", body:"After decades printing camo patterns onto sub-par clothing, hunting brands have become leaders in the development of technical outdoor apparel. And now, they’re starting to push those clothes into the mainstream space, both making their hunting apparel available in solid colors, and creating entire lines devoted to everyday pursuits. Here’s some of the latest, greatest technical gear from hunting brands that you can wear anywhere you want.Bozeman, Montana-based Sitka kicked off the high-tech hunting apparel trend back in 2005, and is now best known for prescribing comprehensive layering systems designed to carefully manage how moisture moves through each piece, keeping hunters dry and comfortable through both static and active pursuits in extreme weather. The Gradient hoody comes from Sitka’s waterfowl line (duck and goose hunting takes place on the water, in the winter). It’s made from an inner layer of high-loft Berber fleece laminated to a tightly woven, DWR-treated polyester outer. Not only is this pullover warmer than a traditional fleece, it’s also considerably more weatherproof and breathable. Sitka originally intended for the piece to provide waterfowl hunters with a quick-drying insulation layer that wouldn’t compress (and therefore lose its ability to insulate) as they lay hidden in blinds. The hoody is cut very slim, and features thumb holes for easy layering under a puffy or a shell. But it turns out all those merits end up working just as well around town or while camping. Size up if you’re larger framed, or prefer looser clothing.",)
Article.create(title:"The Gear You Need for a Good Hunting Camp", author:"Smoky the Bear", body:"Ididn’t grow up hunting, but like many of my outdoorsy peers in recent years, I found myself drawn to the sport for a variety of reasons. The ideas of new adventures and being closer to the food I consume were big ones, not to mention the fact that hunting combines many of the things I already loved to do: camp, hike, and be out in the woods. After almost five years, to say I’m obsessed is putting it lightly. I now find myself routinely leaving for five- to ten-day hunts, chasing everything from high country elk to desert mule deer, and even javelina and turkey. As a result, the vast majority of the camping I do now is while hunting. As with all types of camping, I’ve found there are a few things that’ll go a long way toward making the situation more comfortable—which means you’ll be able to stay out longer and hunt harder.",)
Article.create(title:"I Counted Every Bit of My Trash for One Month on the PCT", author:"Ranger Dave", body:"Walking from Mexico to Canada, I suppose, simply wasn’t tedious enough for me. So in late July, just as I reached the northern edge of California during a 2,653-mile thru-hike of the Pacific Crest Trail, I decided to start counting every single scrap of trash I created for an entire month. I carried it all for days on end in a disgusting Ziploc bag stuffed into my backpack—always gross, sometimes embarrassing, permanently revealing. For the first three months of my trek, I’d seen trashcans at almost every trailhead or convenience store my fellow Hiker Trash friends frequented, overflowing with our collective refuse. There were snapped trekking poles and overspent hiking shoes, empty pouches of dehydrated food and crumpled vestiges of instant coffee. The sheer quantity was impressive in a Mad Max prequel kind of way. How much stuff, I wondered, was I wasting? So from Oregon’s enchanting Crater Lake to the faux Bavarian burg of Leavenworth, Washington, I catalogued every bit of my waste, chronicling each outgoing parcel in a single cellphone note that grew so long scanning it began to feel like a personal doomscroll. I trashed nine hummus containers and 30 Ziploc bags, two shoes and 34 cans of stove fuel, beer, and soda water. There were 17 ketchup packets, almost as much hot sauce, and one plastic pint of Southern Comfort. I discarded so many compostable coffee pouches that I could not compost that I now cannot bear to type the number. On and on it went, from pizza boxes to joint containers, red pepper pouches to two garlic bulbs. By the start of September, I’d somehow discarded 686 separate items, or more than 20 each day. And those were only the ones I remembered to count during a month when I tried to curb my waste. That was less than a quarter of my hike, meaning I’d likely tossed an excess of 3,000 bits of junk overall, more than one per mile. I reached the Canadian border a week later, toting more than a twinge of guilt.",)
Article.create(title:"Mountain-Bike Roots in a Do-Almost-Everything Gravel Racer", author:"John Wayne", body:"There’s a lot to like about Fezzari’s revamped Shafer gravel rig. Atop the list is the bike’s confidence-boosting stability on the toughest roads or trails. That solid feel springs from Shafer’s roots in mountain-bike geometry. The 2022 Shafer marks a stark departure from the original 2016 model, which featured steeper angles and distinctly road-centric geometry. This new Shafer utilizes the tricks and knowledge that has driven Fezzari’s popularity within the mountain-bike world. I rode the Shafer on a wide array of gravel roads, doubletrack, and singletrack, and the bike delivered the most distinct feel when the climbs were loose and steep and the descents were bumpy and tight.",)