local Base = {}

local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

function Base:Notify(text, type)
    if Config.Notify == 'qb' then
        QBCore.Functions.Notify(text, type)
    elseif Config.Notify == 'ox' then
        lib.notify({ description = text, type = type })
    end
end

function Base:Hasitem(item, ammount)
    if Config.Inventory == 'qb' then
        return exports['qb-inventory']:HasItem(item, ammount)
    elseif Config.Inventory == 'ox' then
        print('ox')
    end
end
return Base