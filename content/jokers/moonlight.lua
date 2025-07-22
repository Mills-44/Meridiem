SMODS.Atlas {
    key  = 'moonlight',
    path = 'moonlight.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'moonlight',
    atlas = 'moonlight',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
        xmult = 2,
        },
    },
    rarity = 3,
    cost = 9,
    unlocked = true,
    discovered = false, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult  
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
        if context.before then
            for i, k in ipairs(context.scoring_hand) do
                k:set_edition("e_mer_darkness", nil, true)
            end
        end
       if context.individual and context.cardarea == G.play then
        if context.other_card.edition and context.other_card.edition.mer_darkness == true then
            return {
                xmult = 2
            }
        end 
       end
    end
  }