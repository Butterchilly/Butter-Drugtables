Config = {}

Config.Core = 'qb' -- 'qb' or 'qbx'
-- What Inventory do you use 
Config.Inventory = 'qb' -- 'qb', 'ox'
-- What Target do you use
Config.Target = 'qb' -- 'qb', 'ox'
-- what Notify do you use?
Config.Notify = 'qb' -- 'qb', 'ox'

-- \\ Want To Use Skill System For Drugtable
Config.Skill_System = true

-- If Skill_System = true 
Config.Skill = 'mz' -- 'mz' for [mz-skills]

Config.Meth = {
    Item = 'meth_table', -- \\ Spawn Code of the Meth Table
    Prop = 'v_ret_ml_tableb', -- \\ Prop For The Meth Table
    Exp = 20, -- \\Gain Exp Per Step Complete \\ If Config.Skill_System = true
}

-- \\ Items That Are Needed For Meth // ---
Config.Items = {
    Start_Cooking = 'paint_thinner',
    Preparing_Goods = 'powder',
    Combinen_Goods = 'meth_ingredient',
    Mix_In_Water = 'water_bottle',
    Add_Solvent = 'liquidmix',
    Crystalize_Product = 'meth_batch',
    Pack_Product = 'meth_cured',
    Meth = 'meth'
}


