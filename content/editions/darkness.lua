SMODS.Shader {
  key = 'darkness',
  path = 'darkness.fs'
}

SMODS.Edition {
  key = 'darkness',
  shader = 'darkness',
  config = {
    amount = 1
  },
  discovered = false,
  weight = 3,     
  in_shop = true,
  extra_cost = 5, 

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
    
      }
    }
  end,

  calculate = function(self, card, context)
   
  end
}