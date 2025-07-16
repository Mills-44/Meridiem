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
  replace_base_card = true,
  no_suit = true,
  no_rank = true,
  always_scores = true,
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