local Base = {}

local QBCore = exports[Config.Resource_Names.Core]:GetCoreObject()

function Base:Notify(text, type)
    if Config.Notify == 'qb' then
        QBCore.Functions.Notify(text, type)
    elseif Config.Notify == 'ox' then
        lib.notify({ description = text, type = type })
    end
end

return Base