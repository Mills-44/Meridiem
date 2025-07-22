SMODS.Atlas {
    key  = 'druid',
    path = 'druid.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'druid',
    atlas = 'druid',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            xmult = 1
        },
    },
    rarity = 3,
    cost = 12,
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
            for _,c in ipairs(context.scoring_hand) do
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.15,
                    func = function()
                    c:flip()
                    c:juice_up(.3,.5)
                    return true
                       end
                }))
                if not c:set_eternal(false) then
                    c:set_eternal(true) 
                end
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = .3,
                    func = function()
                    c:flip()
                    return true
                    end}))
            end
            local rooted_cards = 0
            for _, c in ipairs(G.playing_cards or {}) do
                if c:set_eternal(true) then
                    rooted_cards = rooted_cards + 1
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

