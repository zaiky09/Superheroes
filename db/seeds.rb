puts "Avengers Assembling 🦸"

hero = Hero.create([  

    {  "name": "Zamil Mopower", "super_name": "Mr. Right" },  
    
    {  "name": "Faith Green", "super_name": "Prayer Girl" },  
    
    {  "name": "Ali Mona", "super_name": "In debt" }
    
    ])

power = Power.create([
    {
      "name": "super speed",
      "description": "faster than a speeding bullet"
    },
    {
      "name": "Teleport",
      "description": "The ultimate jumpman"
    }
  ])    
 
hero-power = HeroPower.create([{
    "strength": "Strong",
    "power_id": 3,
    "hero_id": 1
  },
  {
    "strength": "Weak",
    "power_id": 1,
    "hero_id": 3
  },
  {
    "strength": "Average",
    "power_id": 2,
    "hero_id": 2
  }])  

  puts "Mission complete"
