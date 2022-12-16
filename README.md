# Taco Job for QBCore

Simple Taco job with eye-target

## Dependencies

- qb-core - https://github.com/qbcore-framework/qb-core (Latest)
- qb-target - https://github.com/BerkieBb/qb-target
- MLO - https://www.youtube.com/watch?v=zuLgAFuTSOk

If you don't have the MLO, you can use this (https://www.gta5-mods.com/maps/taco-restaurant-mlo-add-on-fivem-pablitomamutopaputo) and change the vectors in the [config.lua].

This script is based on (https://github.com/Randolio/randol_burgershot). Cheers to him!

## Add this to your [qb-core/shared/jobs.lua]
```
    ['taco'] = {
		label = 'Taco Shop',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cook',
                payment = 75
            },
            ['1'] = {
                name = 'Manager',
                isboss = true,
                payment = 150,
            },
        },
	},
```

## Add this to your [qb-core/shared/items.lua]
```
-- Taco Food
	["beef-taco"] 				 	 = {["name"] = "beef-taco", 			 		["label"] = "Beef Taco", 				["weight"] = 250, 		["type"] = "item", 		["image"] = "beef-taco.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Beef Taco!"},
	["quesadilla"] 			 		 = {["name"] = "quesadilla", 			 		["label"] = "Quesadilla", 				["weight"] = 250, 		["type"] = "item", 		["image"] = "quesadilla.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Quesadilla!"},
	["chicken-burrito"] 			 = {["name"] = "chicken-burrito", 			 	["label"] = "Chicken Burrito", 			["weight"] = 250, 		["type"] = "item", 		["image"] = "chicken-burrito.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Chicken Burrito!"},
	["nachos"] 		 				 = {["name"] = "nachos", 						["label"] = "Nachos", 					["weight"] = 250, 		["type"] = "item", 		["image"] = "nachos.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Nachos!"},
	
	-- Taco Drinks
	["coke-soda"] 			     	 = {["name"] = "coke-soda", 					["label"] = "Coke Soda", 				["weight"] = 180, 		["type"] = "item", 		["image"] = "coke-soda.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Coke Soda!"},
	["fanta"] 			     	 	 = {["name"] = "fanta", 						["label"] = "Fanta", 					["weight"] = 180, 		["type"] = "item", 		["image"] = "fanta.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Fanta!"},
	
	--Ingredients
	["tortillas"] 				 	 = {["name"] = "tortillas", 			 	  	["label"] = "Tortillas", 				["weight"] = 150, 		["type"] = "item", 		["image"] = "tortillas.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["ground-beef"] 				 = {["name"] = "ground-beef", 			 	  	["label"] = "Ground Beef", 				["weight"] = 210, 		["type"] = "item", 		["image"] = "ground-beef.png", 		    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["cheddar-cheese"] 				 = {["name"] = "cheddar-cheese", 			 	["label"] = "Cheddar Cheese", 			["weight"] = 125, 		["type"] = "item", 		["image"] = "cheddar-cheese.png", 	    ["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["butter"] 				 		 = {["name"] = "butter", 			 			["label"] = "Butter", 					["weight"] = 125, 		["type"] = "item", 		["image"] = "butter.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Smooth like butter, like a criminal undercover~"},
	["chicken"] 				 	 = {["name"] = "chicken", 			 			["label"] = "Chicken", 					["weight"] = 180, 		["type"] = "item", 		["image"] = "chicken.png", 	        	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["lettuce"] 				 	 = {["name"] = "lettuce", 			 			["label"] = "Lettuce", 					["weight"] = 150, 		["type"] = "item", 		["image"] = "lettuce.png", 	    		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["tortilla-chips"] 		 		 = {["name"] = "tortilla-chips", 				["label"] = "Tortilla Chips", 			["weight"] = 150, 		["type"] = "item", 		["image"] = "tortilla-chips.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["carbonated-water"] 		 	 = {["name"] = "carbonated-water", 				["label"] = "Carbonated Water", 		["weight"] = 125, 		["type"] = "item", 		["image"] = "carbonated-water.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["sugar-cubes"] 		 		 = {["name"] = "sugar-cubes", 					["label"] = "Sugar Cubes", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "sugar-cubes.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
	["taco-tomato"] 		 	 	 = {["name"] = "taco-tomato", 					["label"] = "Tomatoes", 				["weight"] = 100, 		["type"] = "item", 		["image"] = "taco-tomato.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Ingredient"},
```

## Add the 2 .ogg files in [sounds] to [interact-sound/client/html/sounds]

## Don't forget to copy and paste the pictures in [images] to [qb-inventory/html/images] or to whatever inventory script you're using.
