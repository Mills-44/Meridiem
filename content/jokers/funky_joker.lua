SMODS.Atlas {
    key  = 'funky_joker',
    path = 'funky_joker.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'funky_joker',
    atlas = 'funky_joker',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            mult = 0,
            mult_gain = 10,
            money = 0, 
            money_gain = 2
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
               card.ability.extra.mult_gain,
               card.ability.extra.money_gain,
               card.ability.extra.mult,
               card.ability.extra.money,
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
        if context.skip_blind then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            card.ability.extra.money = card.ability.extra.money + card.ability.extra.money_gain
            ease_dollars(card.ability.extra.money)
            return {
                message = "+$" .. tostring(card.ability.extra.money_gain)
            }
        end
        if context.joker_main then
            return { 
                mult = card.ability.extra.mult
            }
        end
        if context.end_of_round and context.cardarea == G.jokers then
            ease_dollars(card.ability.extra.money)
        end
    end
  }