SMODS.Shader {
  key = 'lightness',
  path = 'lightness.fs'
}

SMODS.Edition {
  key = 'lightness',
  shader = 'lightness',
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