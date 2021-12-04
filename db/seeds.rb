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