SMODS.Atlas {
    key  = 'lord_of_chips',
    path = 'lord_of_chips.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'lord_of_chips',
    atlas = 'lord_of_chips',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            mult = 1,    
        },
    },
    rarity = 2,
    cost = 7,
    unlocked = true,
    discovered = false, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.money_bonus
            }
        }  
    end,
    calculate = function(self, card, context)
        local chip_trip = math.pow(tonumber(format_ui_value(G.GAME.chips)), 3)
        if context.joker_main then         
            return {
                mult = 1,
                chips = chip_trip
            }
        end
        if context.end_of_round and context.cardarea == G.jokers then
            ease_dollars(12)
            return {
                message = "+$10",
                colour = G.C.GOLD
            }
        end
    end
    }

