local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

-- \\ Make Item Usable // --
QBCore.Functions.CreateUseableItem(Config.Meth.Item, function(source)
    TriggerClientEvent('CC-Drugtables:Client:Spawn_Meth_Table', source)
end)


-- \\ Remove Item // --
RegisterNetEvent('CC-Drugtables:server:RemoveItem', function(item, count)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.RemoveItem(item, count)
end)

-- \\ Add Item // --
RegisterNetEvent('CC-Drugtables:server:AddItem', function(item, count)
    local Player = QBCore.Functions.GetPlayer(source)

    Player.Functions.AddItem(item, count)
end)

