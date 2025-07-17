SMODS.Atlas {
    key  = 'a_fools_camera',
    path = 'a_fools_camera.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'a_fools_camera',
    atlas = 'a_fools_camera',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
        xmult = 1,
        xmult_gain = .1
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
                card.ability.extra.xmult_gain,
                card.ability.extra.xmult  
            }
        }  
    end,
    calculate = function(self, card, context)
        if context.before then
            for k, v in ipairs(context.scoring_hand) do
                 if v.config.center ~= "e_mer_darkness" then 
                    v:set_edition(nil, nil, true)
                    card.ability.extra.xmult = (card.ability.extra.xmult + card.ability.extra.xmult_gain) 
                end
            end
        end
        if context.joker_main then 
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
  }