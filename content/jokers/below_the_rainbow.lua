SMODS.Atlas {
    key  = 'below_the_rainbow',
    path = 'below_the_rainbow.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Joker {
    key = 'below_the_rainbow',
    atlas = 'below_the_rainbow',
    pos = {
        x = 0,
        y = 0
    },
    config = {
        extra = {
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
        local count = 0
        if context.before then
            for _, c in ipairs(context.scoring_hand) do
                 if c.config.center ~= "m_bonus" then 
                    c:set_ability(nil, nil, true)
                    count = count + 1
                end
            end
        end
        if context.joker_main then 
            if count == 1 then
                if G.consumeables.cards[1] then
                    G.E_MANAGER:add_event(Event({
                        func = function() 
                            local card = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            card:set_edition({negative = true}, true)
                            card:add_to_deck()
                            G.consumeables:emplace(card) 
                        return true
                    end}))
                end
            end
            if count == 2 then
                if G.consumeables.cards[1] then
                    G.E_MANAGER:add_event(Event({
                        func = function() 
                            local card = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card2 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            card:set_edition({negative = true}, true)
                            card2:set_edition({negative = true}, true)
                            card:add_to_deck()
                            card2:add_to_deck()
                            G.consumeables:emplace(card) 
                            G.consumeables:emplace(card2) 
                        return true
                    end}))
                end
            end
            if count == 3 then
                if G.consumeables.cards[1] then
                    G.E_MANAGER:add_event(Event({
                        func = function() 
                            local card = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card2 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card3 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            card:set_edition({negative = true}, true)
                            card2:set_edition({negative = true}, true)
                            card3:set_edition({negative = true}, true)
                            card:add_to_deck()
                            card2:add_to_deck()
                            card3:add_to_deck()
                            G.consumeables:emplace(card) 
                            G.consumeables:emplace(card2)
                            G.consumeables:emplace(card3)
                        return true
                    end}))
                end
            end
            if count == 4 then
                if G.consumeables.cards[1] then
                    G.E_MANAGER:add_event(Event({
                        func = function() 
                            local card = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card2 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card3 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card4 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            card:set_edition({negative = true}, true)
                            card2:set_edition({negative = true}, true)
                            card3:set_edition({negative = true}, true)
                            card4:set_edition({negative = true}, true)
                            card:add_to_deck()
                            card2:add_to_deck()
                            card3:add_to_deck()
                            card4:add_to_deck()
                            G.consumeables:emplace(card) 
                            G.consumeables:emplace(card2)
                            G.consumeables:emplace(card3)
                            G.consumeables:emplace(card4)
                        return true
                    end}))
                end
            end
            if count == 5 then
                if G.consumeables.cards[1] then
                    G.E_MANAGER:add_event(Event({
                        func = function() 
                            local card = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card2 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card3 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card4 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            local card5 = copy_card(pseudorandom_element(G.consumeables.cards, pseudoseed('below_the_rainbow')), nil)
                            card:set_edition({negative = true}, true)
                            card2:set_edition({negative = true}, true)
                            card3:set_edition({negative = true}, true)
                            card4:set_edition({negative = true}, true)
                            card5:set_edition({negative = true}, true)
                            card:add_to_deck()
                            card2:add_to_deck()
                            card3:add_to_deck()
                            card4:add_to_deck()
                            card5:add_to_deck()
                            G.consumeables:emplace(card) 
                            G.consumeables:emplace(card2)
                            G.consumeables:emplace(card3)
                            G.consumeables:emplace(card4)
                            G.consumeables:emplace(card5)
                        return true
                    end}))
                end
            end
        end
    end
  }