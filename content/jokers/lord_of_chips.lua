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
            xchips = 1
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
                card.ability.extra.xchips
            }
        }  
    end,
    calculate = function(self, card, context)
        local xchips = 1
        if context.individual and context.cardarea == G.play then
            if context.other_card:get_id() == 13 then
                card.ability.extra.xchips = card.ability.extra.xchips + 1
            end
        end
        if context.joker_main then         
            return {
                xmult = .5,
                xchips = card.ability.extra.xchips
            }
        end
    end
    }

