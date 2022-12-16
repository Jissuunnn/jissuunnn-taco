local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('jissuunnn-taco:server:makeBeefTaco', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("tortillas", 1)
    Player.Functions.RemoveItem("ground-beef", 1)
    Player.Functions.RemoveItem("taco-tomato", 1)
    Player.Functions.AddItem("beef-taco", 1)
end)

RegisterNetEvent('jissuunnn-taco:server:makeChickenBurrito', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("tortillas", 1)
    Player.Functions.RemoveItem("chicken", 1)
    Player.Functions.RemoveItem("lettuce", 1)
    Player.Functions.AddItem("chicken-burrito", 1)
end)

RegisterNetEvent('jissuunnn-taco:server:makeQuesadillas', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("tortillas", 1)
    Player.Functions.RemoveItem("cheddar-cheese", 1)
    Player.Functions.RemoveItem("butter", 1)
    Player.Functions.AddItem("quesadilla", 1)
end)

RegisterNetEvent('jissuunnn-taco:server:makeNachos', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("tortilla-chips", 1)
    Player.Functions.RemoveItem("cheddar-cheese", 1)
    Player.Functions.AddItem("nachos", 1)
end)

RegisterNetEvent('jissuunnn-taco:server:makeCokeSoda', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("carbonated-water", 1)
    Player.Functions.RemoveItem("sugar-cubes", 1)
    Player.Functions.AddItem("coke-soda", 1)
end)

RegisterNetEvent('jissuunnn-taco:server:makeFanta', function()
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player then return end
    Player.Functions.RemoveItem("carbonated-water", 1)
    Player.Functions.RemoveItem("sugar-cubes", 1)
    Player.Functions.AddItem("fanta", 1)
end)

QBCore.Functions.CreateUseableItem("beef-taco", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("jissuunnn-taco:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("chicken-burrito", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("jissuunnn-taco:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("quesadilla", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("jissuunnn-taco:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("nachos", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("jissuunnn-taco:client:Eat", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("coke-soda", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("jissuunnn-taco:client:Drink", source, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fanta", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("jissuunnn-taco:client:Drink", source, item.name)
    end
end)

RegisterNetEvent("jissuunnn-taco:server:billPlayer", function(playerId, amount)
    local biller = QBCore.Functions.GetPlayer(source)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == 'taco' then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                billed.Functions.RemoveMoney('bank', amount)
                TriggerClientEvent('QBCore:Notify', source, 'You charged a customer.', 'success')
                TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'You have been charged $'..amount..' for your order at Taco Shop.')
                exports['qb-management']:AddMoney('taco', amount)
                else
                    TriggerClientEvent('QBCore:Notify', source, 'Must be a valid amount above 0.', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'You cannot bill yourself.', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'Player not online', 'error')
        end
    end
end)