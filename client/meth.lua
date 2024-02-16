local Base = require 'client.base'
local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

-- \\ Start Cooking // --
RegisterNetEvent('Butter-Drugtables:Client:Start_Cooking',function ()
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
        Base:Notify('Step Completed', 'success', 5000)
        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Items.Start_Cooking, 1)
        TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Items.Preparing_Goods, 1)
        end, function()
           Base:Notify('Failed To Put ', 'error', 5000)
        end)
        else
           Base:Notify('You Dont Have Paint Thinner', 'error', 5000)
    end
end)

-- \\ Preparing Goods // --
RegisterNetEvent('Butter-Drugtables:Client:Preparing_Goods',function ()
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
       Base:Notify('Step Completed', 'success', 5000)
        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Items.Preparing_Goods, 1)
        TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Items.Combinen_Goods, 1)
        end, function()
           Base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Combinen Goods // --
RegisterNetEvent('Butter-Drugtables:Client:Combinen_Goods',function ()
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
       Base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Items.Combinen_Goods, 1)
        TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Items.Mix_In_Water, 1)
        end, function()
           Base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Mix In Water // --
RegisterNetEvent('Butter-Drugtables:Client:Mix_In_Water',function ()
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
       Base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Items.Mix_In_Water, 1)
        TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Items.Add_Solvent, 1)
        end, function()
           Base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Add Solvent // --
RegisterNetEvent('Butter-Drugtables:Client:Add_Solvent',function ()
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
       Base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Items.Add_Solvent, 1)
        TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Items.Crystalize_Product, 1)
        end, function()
           Base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Crystalize Product // --
RegisterNetEvent('Butter-Drugtables:Client:Crystalize_Product',function ()
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
       Base:Notify('Step Completed', 'success', 5000)
        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Items.Crystalize_Product, 1)
        TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Items.Pack_Product, 1)
        end, function()
           Base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Pack Product // --
RegisterNetEvent('Butter-Drugtables:Client:Pack_Product',function ()
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
       Base:Notify('Step Completed', 'success', 5000)

        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Items.Pack_Product, 1)
        TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Items.Meth, 1)
        end, function()
           Base:Notify('Failed To Put ', 'error', 5000)
        end)
end)

-- \\ Spawn Table // --
RegisterNetEvent('Butter-Drugtables:Client:Spawn_Meth_Table', function()
    local playerPed = PlayerPedId()
    local coords    = GetEntityCoords(playerPed)
    local forward   = GetEntityForwardVector(playerPed)
    local x, y, z   = table.unpack(coords + forward * 2.0)

    local prop = Config.Meth.Prop
    lib.requestModel(prop)

    if lib.progressBar({
        duration = 2000,
        label = 'Placing Meth Table...',
        useWhileDead = false,
        canCancel = true,
        disable = {
            car = true,
        },
        anim = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            clip = 'machinic_loop_mechandplayer'
        },
    }) then
        local obj = CreateObject(prop, x, y, z, true, false, true)
        PlaceObjectOnGroundProperly(obj)
        SetEntityAsMissionEntity(obj)
        TriggerServerEvent('Butter-Drugtables:server:RemoveItem', Config.Meth.Item, 1)
    else
        Base:Notify('Canceled', 'error', 5000)
    end
end)

--  \\ Remove Table // --
RegisterNetEvent('Butter-Drugtables:Client:Remove_Meth_Table', function(obj)
    if DoesEntityExist(obj) then
        if lib.progressBar({
            duration = 2000,
            label = 'Picking Up...',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
            anim = {
                dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                clip = 'machinic_loop_mechandplayer'
            },
        }) then
            if DoesEntityExist(obj) then
                SetEntityAsMissionEntity(obj)
                DeleteEntity(obj)
                if not DoesEntityExist(obj) then
                    TriggerServerEvent('Butter-Drugtables:server:AddItem', Config.Meth.Item, 1)
                else
                   Base:Notify("You can't pick up this table", 'error', 5000)
                end
            end
        end
    end
end)
