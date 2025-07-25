SMODS.Atlas {
    key  = 'waltz_for_the_fool',
    path = 'waltz_for_the_fool.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'waltz_for_the_fool',
    atlas = 'waltz_for_the_fool',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
        },
    },
    rarity = 2,
    cost = 8,
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
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(
        "Art: Generic", 
        MERIDIEM.COLOR.ARTGEN, 
        G.C.WHITE, 
        1.0 )
    end,
    calculate = function(self, card, context)
        
    end
  }