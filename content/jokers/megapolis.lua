SMODS.Atlas {
    key  = 'megapolis',
    path = 'megapolis.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'megapolis',
    atlas = 'megapolis',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            money_bonus = 10,
            xmult = .5,
            xchips = .5
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
    set_badges = function(self, card, badges)
        badges[#badges+1] = create_badge(
        "Art: Generic", 
        MERIDIEM.COLOR.ARTGEN, 
        G.C.WHITE, 
        1.0 )
    end,
    calculate = function(self, card, context)
        if context.joker_main then         
            return {
                xmult = .5,
                xchips = .5
            }
        end
        if context.end_of_round and context.cardarea == G.jokers then
            ease_dollars(card.ability.extra.money_bonus)
            return {
                message = "+$10",
                colour = G.C.GOLD
            }
        end
    end
    }

