local base = require 'client.base'
local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

-- \\ Start Cooking // --
RegisterNetEvent('CC-Drugtables:Client:Start_Cooking',function ()
    local hasItem = QBCore.Functions.HasItem(Config.Items.Start_Cooking)
    if hasItem then
    QBCore.Functions.Progressbar('Cooking', 'Cooking...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
       base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Items.Start_Cooking, 1)
        TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Items.Preparing_Goods, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Start_Cooking], "remove")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Preparing_Goods], "add")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
        else
           base:Notify('You Dont Have Paint Thinner', 'error', 5000)
    end
end)

-- \\ Preparing Goods // --
RegisterNetEvent('CC-Drugtables:Client:Preparing_Goods',function ()
    QBCore.Functions.Progressbar('Preparing_Goods', 'Preparing Goods...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
       base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Items.Preparing_Goods, 1)
        TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Items.Combinen_Goods, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Preparing_Goods], "remove")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Combinen_Goods], "add")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Combinen Goods // --
RegisterNetEvent('CC-Drugtables:Client:Combinen_Goods',function ()
    QBCore.Functions.Progressbar('Combinen_Goods', 'Combinen Goods...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
       base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Items.Combinen_Goods, 1)
        TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Items.Mix_In_Water, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Combinen_Goods], "remove")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Mix_In_Water], "add")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Mix In Water // --
RegisterNetEvent('CC-Drugtables:Client:Mix_In_Water',function ()
    QBCore.Functions.Progressbar('Mix_In_Water', 'Mixing In Water...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
       base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Items.Mix_In_Water, 1)
        TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Items.Add_Solvent, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Mix_In_Water], "remove")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Add_Solvent], "add")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Add Solvent // --
RegisterNetEvent('CC-Drugtables:Client:Add_Solvent',function ()
    QBCore.Functions.Progressbar('Add_Solvent', 'Adding Solvent...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
       base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Items.Add_Solvent, 1)
        TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Items.Crystalize_Product, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Add_Solvent], "remove")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Crystalize_Product], "add")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Crystalize Product // --
RegisterNetEvent('CC-Drugtables:Client:Crystalize_Product',function ()
    QBCore.Functions.Progressbar('Crystalize_Product', 'Crystalize Product...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
       base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Items.Crystalize_Product, 1)
        TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Items.Pack_Product, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Crystalize_Product], "remove")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Pack_Product], "add")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Pack Product // --
RegisterNetEvent('CC-Drugtables:Client:Pack_Product',function ()
    QBCore.Functions.Progressbar('Pack_Product', 'Pack Product...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
       base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Items.Pack_Product, 1)
        TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Items.Meth, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Pack_Product], "remove")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Items.Meth], "add")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Spawn Table // --
RegisterNetEvent('CC-Drugtables:Client:Spawn_Meth_Table', function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 2.0)

    local prop = Config.Meth.Prop
    RequestModel(prop)
    while not HasModelLoaded(prop) do
        Wait(0)
    end


    QBCore.Functions.Progressbar('spawn_table', 'Placing...', 10000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true
    }, {
        animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        anim = 'machinic_loop_mechandplayer',
        flags = 16,
    }, {}, {}, function()
        local obj = CreateObject(prop, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj)
        TriggerServerEvent('CC-Drugtables:server:RemoveItem', Config.Meth.Item, 1)
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Meth.Item], "remove")
        end, function()
           base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

--  \\ Remove Table // --
RegisterNetEvent('CC-Drugtables:Client:Remove_Meth_Table', function(obj)
    if DoesEntityExist(obj) then
        QBCore.Functions.Progressbar('Remove_table', 'Picking Up...', 1000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            anim = 'machinic_loop_mechandplayer',
            flags = 16,
        }, {}, {}, function()
            if DoesEntityExist(obj) then
                SetEntityAsMissionEntity(obj)
                DeleteEntity(obj)
                if not DoesEntityExist(obj) then
                    TriggerServerEvent('CC-Drugtables:server:AddItem', Config.Meth.Item, 1)
                    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Meth.Item], "AddItem")
                else
                   base:Notify("You can't pick up this table", 'error', 5000)
                end
            end
        end)
    end
end)
