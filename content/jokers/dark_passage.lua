SMODS.Atlas {
    key  = 'dark_passage',
    path = 'dark_passage.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'dark_passage',
    atlas = 'dark_passage',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
            chips = 10,
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
               card.ability.extra.chips,
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
            local checker = true
            if next(context.poker_hands['Two Pair']) then 
                for k, v in ipairs(context.scoring_hand) do
                    if v:is_suit("Hearts") or v:is_suit("Diamonds") then
                        checker = false
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = .2,
                            func = function()
                                local card1 = create_card("Playing Card", G.hand, nil, nil, nil, nil, nil, nil)
                                local card2 = create_card("Playing Card", G.hand, nil, nil, nil, nil, nil, nil)
                                local card3 = create_card("Playing Card", G.hand, nil, nil, nil, nil, nil, nil)
                                card1:set_edition("e_mer_darkness")
                                card2:set_edition("e_mer_darkness")
                                card3:set_edition("e_mer_darkness")
                                card1:add_to_deck()
                                card2:add_to_deck()
                                card3:add_to_deck()
                                G.hand:emplace(card1)
                                G.hand:emplace(card2)
                                G.hand:emplace(card3)
                                card1:juice_up(.3,.5)
                                card2:juice_up(.3,.5)
                                card3:juice_up(.3,.5)
                            return true
                        end
                        }))
                    end
                end
                if checker then 
                    if context.individual and context.cardarea == G.play then
                        context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips
                        return {
                            card = card
                        }
                    end
                end
            end
        end
    end
  }