SMODS.Atlas {
    key  = 'backstage',
    path = 'backstage.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'backstage',
    atlas = 'backstage',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            mult = 0,
            mult_gain = 2,
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
               card.ability.extra.mult,
               card.ability.extra.mult_gain,
            }
        }  
    end,
    calculate = function(self, card, context)
        if context.joker_main then
        local only_face = false
        for i = 1, #context.full_hand do
				if context.full_hand[i]:get_id() == 11 or context.full_hand[i]:get_id() == 12 or context.full_hand[i]:get_id() == 13 then
					only_face = true
                else
                    only_face = false
				end
			end
			if only_face then
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            else    
                card.ability.extra.mult = 0
                return {
                    message = "Reset!",
                    colour = G.C.FILTER
                }
            end
            return {
                mult = card.ability.extra.mult
            }
        end
    end
  }