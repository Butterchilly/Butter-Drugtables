local Base = {}

local QBCore = exports['qb-core']:GetCoreObject()

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

function Base:Upate_Skill(skill, amount)
    if Config.Skill == 'mz' then
        exports["mz-skills"]:UpdateSkill(skill, amount)
    end
end

function Base:Check_Skill(skill, val)
    if Config.Skill == 'mz' then
        exports["mz-skills"]:CheckSkill(skill, val)
    end
end
return Base