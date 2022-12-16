Config = {}

Config.GaragePed = "u_m_m_bikehire_01"

Config.PedLocation = vector4(13.67, -1612.43, 28.40, 197.47)

Config.VehicleSpawn = vector4(16.02, -1613.69, 29.19, 139.89)

Config.Vehicle = 'taco'

HungerFill = {
    ["beef-taco"] = math.random(25, 35),
    ["chicken-burrito"] = math.random(25, 35),
    ["quesadilla"] = math.random(25, 35),
    ["nachos"] = math.random(25, 35),
}

ThirstFill = {
    ["coke-soda"] = math.random(20, 30),
    ["fanta"] = math.random(20, 30),
}

Config.Zones = {
    [1] = { coords = vector3(11.4, -1598.92, 29.38), radius = 1.35, icon = "fa-solid fa-box-open", event = "jissuunnn-taco:client:ingredientStore", label = "Ingredients", job = "taco" },
    [2] = { coords = vector3(16.2, -1597.67, 29.38), radius = 0.75, icon = "fa-solid fa-briefcase", event = "qb-bossmenu:client:OpenMenu", label = "Manage Business", job = {['taco'] = 1} },	
    [3] = { coords = vector3(12.78, -1600.47, 29.38), radius = 0.8, icon = "far fa-clipboard", event = "jissuunnn-taco:client:frontTray1", label = "Counter", },  
    [4] = { coords = vector3(16.86, -1599.36, 29.38), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "jissuunnn-taco:client:drinkStation", label = "Make Drinks", job = "taco" },  
    [5] = { coords = vector3(14.97, -1596.47, 29.38), radius = 0.9, icon = "fa-solid fa-beer-mug-empty", event = "jissuunnn-taco:client:cookStation", label = "Cook Food", job = "taco" },  
    [6] = { coords = vector3(13.68, -1595.91, 29.38), radius = 0.9, icon = "fa-solid fa-square-up-right", event = "jissuunnn-taco:client:jobFridge1", label = "Fridge", job = "taco" },
    [7] = { coords = vector3(8.26, -1601.76, 29.38), radius = 0.6, icon = "fa-solid fa-clock", event = "jissuunnn-taco:clientToggleDuty", label = "Clock In/Out", job = "taco" },
    [8] = { coords = vector3(14.21, -1601.51, 29.19), radius = 0.5, icon = "fa-brands fa-cc-visa", event = "jissuunnn-taco:bill", label = "Bill Customer", job = "taco" },
}

Config.Items = {
label = "Shop",
    slots = 9,
    items = {
        [1] = {
            name = "tortillas",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "ground-beef",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "cheddar-cheese",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "butter",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "chicken",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },       
		[6] = {
            name = "lettuce",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
		[7] = {
            name = "tortilla-chips",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
		[8] = {
            name = "carbonated-water",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
		[9] = {
            name = "sugar-cubes",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "taco-tomato",
            price = 5,
            amount = 50,
            info = {},
            type = "item",
            slot = 10,
        },
    }
}
