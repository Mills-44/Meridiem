SMODS.Atlas {
    key  = 'corrupted_tv',
    path = 'corrupted_tv.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'corrupted_tv',
    atlas = 'corrupted_tv',
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
            xmult = 1,
            xmult_gain = 3
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
                card.ability.extra.xmult_gain,
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
        if context.setting_blind then
            local hacked_cards = 0
            for _, card in ipairs(G.playing_cards) do
                if hacked_cards < 3 then 
                    card:set_seal("mer_hacked", true)
                    hacked_cards = hacked_cards + 1
                end
            end
            return {
                message = "Hacked!",
                colour = G.C.FILTER
            }
        end
        if context.joker_main then 
            local hack_count = 0
            if context.other_card  and context.individual then
                if context.other_card.seal and context.other_card.seal.mer_hacked == true then
                    hack_count = hack_count + 1
                    if hack_count >= 3 then
                        card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_gain
                        hack_count = 0
                        if G.GAME.dollar >= 50 then
                            ease_dollars(-50)
                            local jokers = {}
                            for k, v in ipairs(G.jokers.cards) do
                                if not v.key == "mer_corrupted_tv" then 
                                    jokers[#jokers + 1] = v
                                end
                            end 
                            local joker = pseudorandom_element(jokers, pseudoseed('corrupted_tv_joker'))
                            joker:copy_card()
                            joker:set_edition("e_negative", true)
                            joker:emplace(G.jokers)
                            joker:juice_up(.3,.5)
                    end
                end
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