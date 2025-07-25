SMODS.Atlas {
    key  = 'sanguis',
    path = 'sanguis.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'sanguis',
    atlas = 'sanguis',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            xmult = 1,
            xmult_bossgain = 1,
            xmult_biggain = .25,
            xmult_smallgain = .1
        },
    },
    rarity = 3,
    cost = 10,
    unlocked = true,
    discovered = false, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xmult_bossgain,
                card.ability.extra.xmult_biggain,
                card.ability.extra.xmult_smallgain,
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
        if context.before and not context.blueprint then
            for _,c in ipairs(context.scoring_hand) do
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.15,
                    func = function()
                    c:flip()
                    c:juice_up(.3,.5)
                    return true
                       end}))
                if not SMODS.has_enhancement(c, 'm_wild') then
                    c:set_ability('m_wild',nil,true) 
                end
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = .3,
                    func = function()
                    c:flip()
                    return true
                    end}))
            end
        end
        if context.joker_main then 
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if (context.end_of_round and G.GAME.blind.boss) and not context.repetition 
        and not context.individual and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_bossgain 
            return {
                message = "+" .. tostring(card.ability.extra.xmult_bossgain) .. "!"
            }
        end
        if (context.end_of_round and G.GAME.blind.big) and not context.repetition 
        and not context.individual and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_biggain 
            return {
                message = "+" .. tostring(card.ability.extra.xmult_biggain) .. "!"
            }
        end
        if (context.end_of_round and G.GAME.blind.small) and not context.repetition 
        and not context.individual and not context.blueprint then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_smallgain 
            return {
                message = "+" .. tostring(card.ability.extra.xmult_smallgain) .. "!"
            }
        end
    end
  }