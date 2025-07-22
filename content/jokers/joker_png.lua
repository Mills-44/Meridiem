SMODS.Atlas {
    key  = 'joker_png',
    path = 'joker_png.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'joker_png',
    atlas = 'joker_png',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            decrease_lvl = 1,
            hand_size = 2,
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
                card.ability.extra.hand_size,
                card.ability.extra.decrease_lvl
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
    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(2)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-2)
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            level_up_hand(self, context.scoring_name, true, 1)
        end
    end
  }