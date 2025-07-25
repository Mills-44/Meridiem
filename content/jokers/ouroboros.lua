SMODS.Atlas {
    key  = 'ouroboros',
    path = 'ouroboros.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'ouroboros',
    atlas = 'ouroboros',
    pos = {
        x = 0,
        y = 0
    },
    soul_pos = {
        x = 1,
        y = 0
    },
    config = {
        extra = {
            retrigger = 0
        },
    },
    rarity = 4,
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
        if context.repetition and context.cardarea == G.play then
            card.ability.extra.retrigger = card.ability.extra.retrigger + 1
            return {
                repetitions = card.ability.extra.retrigger
            }
        end
        if context.final_scoring_step then
            card.ability.extra.retrigger = 0 
            return {
                message = "Reset!",
                colour = G.C.FILTER
            }
        end
    end
  }