if Config.Target == 'qb' then
-- \\ Target For The Meth Table
exports[Config.Resource_Names.Target]:AddTargetModel(Config.Meth.Prop, { 
    options = { 
      { 
        type = "client",
        event = "Butter-Drugtables:Client:Start_Cooking", 
        icon = 'fa-solid fa-flask', 
        label = 'Start Cooking', 
        -- item = Config.Items.Start_Cooking
      },
      {
        type = "client",
        event = "Butter-Drugtables:Client:Preparing_Goods", 
        icon = 'fa-solid fa-flask', 
        label = 'Preparing Goods', 
        item = Config.Items.Preparing_Goods
      },
      {
        type = "client",
        event = "Butter-Drugtables:Client:Combinen_Goods", 
        icon = 'fa-solid fa-flask', 
        label = 'Combinen Goods', 
        item = Config.Items.Combinen_Goods
      },
      {
        type = "client",
        event = "Butter-Drugtables:Client:Mix_In_Water", 
        icon = 'fa-solid fa-flask', 
        label = 'Mix In Water', 
        item = Config.Items.Mix_In_Water
      },
      {
        type = "client",
        event = "Butter-Drugtables:Client:Add_Solvent", 
        icon = 'fa-solid fa-flask', 
        label = 'Add Solvent', 
        item =  Config.Items.Add_Solvent
      },
      {
        type = "client",
        event = "Butter-Drugtables:Client:Crystalize_Product", 
        icon = 'fa-solid fa-flask', 
        label = 'Crystalize Product',
        item =  Config.Items.Crystalize_Product
      },
      {
        type = "client",
        event = "Butter-Drugtables:Client:Pack_Product", 
        icon = 'fa-solid fa-flask', 
        label = 'Pack Product', 
        item =  Config.Items.Pack_Product     
       },
      {
        type = "client",
        icon = 'fa fa-arrow-circle-up',
        action = function(entity) 
            if IsPedAPlayer(entity) then return false end 
            TriggerEvent('Butter-Drugtables:Client:Remove_Meth_Table', entity) 
        end,
        label = 'Pickup Table', 
      }
    },
    distance = 2.5, 
  })
elseif Config.Target == 'ox' then
    exports.ox_target:addModel(Config.Meth.Prop, { 
        { 
          type = "client",
          event = "Butter-Drugtables:Client:Start_Cooking", 
          icon = 'fa-solid fa-flask', 
          label = 'Start Cooking', 
          item = Config.Items.Start_Cooking
        },
        {
          type = "client",
          event = "Butter-Drugtables:Client:Preparing_Goods", 
          icon = 'fa-solid fa-flask', 
          label = 'Preparing Goods', 
          item = Config.Items.Preparing_Goods
        },
        {
          type = "client",
          event = "Butter-Drugtables:Client:Combinen_Goods", 
          icon = 'fa-solid fa-flask', 
          label = 'Combinen Goods', 
          item = Config.Items.Combinen_Goods
        },
        {
          type = "client",
          event = "Butter-Drugtables:Client:Mix_In_Water", 
          icon = 'fa-solid fa-flask', 
          label = 'Mix In Water', 
          item = Config.Items.Mix_In_Water
        },
        {
          type = "client",
          event = "Butter-Drugtables:Client:Add_Solvent", 
          icon = 'fa-solid fa-flask', 
          label = 'Add Solvent', 
          item =  Config.Items.Add_Solvent
        },
        {
          type = "client",
          event = "Butter-Drugtables:Client:Crystalize_Product", 
          icon = 'fa-solid fa-flask', 
          label = 'Crystalize Product',
          item =  Config.Items.Crystalize_Product
        },
        {
          type = "client",
          event = "Butter-Drugtables:Client:Pack_Product", 
          icon = 'fa-solid fa-flask', 
          label = 'Pack Product', 
          item =  Config.Items.Pack_Product     
         },
        {
          type = "client",
          icon = 'fa fa-arrow-circle-up',
          onSelect = function(data)
            TriggerEvent('Butter-Drugtables:Client:Remove_Meth_Table', data.entity)
        end,
          label = 'Pickup Table', 
        }
      })
end
