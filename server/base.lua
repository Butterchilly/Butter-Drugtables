local Base = {}
local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()


-- \\ Make Item Usable // --
if Config.Core == 'qb' then
    QBCore.Functions.CreateUseableItem(Config.Meth.Item, function(source)
        TriggerClientEvent('Butter-Drugtables:Client:Spawn_Meth_Table', source)
    end)
elseif Config.Core == 'qbx' then
    exports.qbx_core:CreateUseableItem(Config.Meth.Item, function(source)
        TriggerClientEvent('Butter-Drugtables:Client:Spawn_Meth_Table', source)
    end)
end


-- \\ Remove Item // --
RegisterNetEvent('Butter-Drugtables:server:RemoveItem', function(item, count)
    local Player = QBCore.Functions.GetPlayer(source)
    if Config.Inventory == 'qb' then
    Player.Functions.RemoveItem(item, count)
    elseif Config.Inventory == 'ox' then
    exports.ox_inventory:RemoveItem(item, count)
    end
end)

-- \\ Add Item // --
RegisterNetEvent('Butter-Drugtables:server:AddItem', function(item, count)
    local Player = QBCore.Functions.GetPlayer(source)
    if Config.Inventory == 'qb' then
    Player.Functions.AddItem(item, count)
    elseif Config.Inventory == 'ox' then
    exports.ox_inventory:AddItem(item, count)
    end
end)

return Base