SMODS.Atlas {
    key  = 'wire_man',
    path = 'wire_man.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'wire_man',
    atlas = 'wire_man',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            destroyed_cards = 3
        },
    },
    rarity = 2,
    cost = 6,
    unlocked = true,
    discovered = false, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.destroyed_cards  
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
        if context.destroy_card then
            card.ability.extra.destroyed_cards = card.ability.extra.destroyed_cards - 1
            if card.ability.extra.destroyed_cards == 0 then
                card.ability.extra.destroyed_cards = 3
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = .2,
                    func = function()
                        local newcard = create_card("Enhanced", G.hand, nil, nil, nil, nil, nil, nil)
                        newcard:set_ability("m_steel")
                        newcard:add_to_deck()
                        G.hand:emplace(newcard)
                        newcard:juice_up(.3,.5)
                    return true
                    end
                }))
            end
        end
        if context.end_of_round then
            SMODS.destroy_cards(G.hand[1])
        end
    end
  }