SMODS.Atlas {
    key  = 'rooted',
    path = 'rooted.png',
    px   = 71, 
    py   = 95, 
}

SMODS.Sticker {
    key = 'rooted',
    atlas = 'rooted',
    pos = {
        x = 0,
        y = 0
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                 
            } 
        }
    end,
    calculate = function(self, card, context)
        
    end
}