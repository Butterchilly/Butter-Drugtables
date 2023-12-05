local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

-- \\ Make Item Usable // --
QBCore.Functions.CreateUseableItem(Config.Meth.Item, function(source)
    TriggerClientEvent('CC-Drugtables:Client:Spawn_Meth_Table', source)
end)


-- \\ Remove Item // --
RegisterNetEvent('CC-Drugtables:server:RemoveItem', function(item, count)
    local Player = QBCore.Functions.GetPlayer(source)
    if Config.Inventory == 'qb' then
    Player.Functions.RemoveItem(item, count)
    elseif Config.Inventory == 'ox' then
    exports.ox_inventory:RemoveItem(item, count)
    end
end)

-- \\ Add Item // --
RegisterNetEvent('CC-Drugtables:server:AddItem', function(item, count)
    local Player = QBCore.Functions.GetPlayer(source)
    if Config.Inventory == 'qb' then
    Player.Functions.AddItem(item, count)
    elseif Config.Inventory == 'ox' then
    exports.ox_inventory:AddItem(item, count)
    end
end)

