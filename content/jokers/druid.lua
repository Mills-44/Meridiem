SMODS.Atlas {
    key  = 'druid',
    path = 'druid.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'druid',
    atlas = 'druid',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
        },
    },
    rarity = 1,
    cost = 5,
    unlocked = true,
    discovered = false, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
    
            }
        }  
    end,
    calculate = function(self, card, context)

    end
    }

