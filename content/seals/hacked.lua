SMODS.Atlas {
    key  = 'hacked',
    path = 'hacked.png',
    px   = 71, 
    py   = 95, 
  }

SMODS.Seal {
    object_type = "Seal",
    key = 'hacked',
    badge_colour = MERIDIEM.COLOR.HACKED,
    atlas = 'hacked',
    pos ={
        x = 0,
        y = 0
    },
    config = {
        rank_odds = 2
    },
    loc_vars = function(self, info_queue, card)
		return { 
            vars = {
                (G.GAME.probabilities.normal or 1),
                card.ability.rank_odds
            }
        }
	end,
    calculate = function(self, card, context)
        if context.cardarea == G.hand and context.main_scoring then
            if MERIDIEM.random_chance(.5) then
                card:modify_rank(-1)
            else
                card:modify_rank(1)
            end
        end
    end
}
                    