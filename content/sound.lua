local sound_files = { -- loop of all soinds implemented in game
"darkness",
"lightness",
"slain",
"rooted",
"hacked"
}

for _, key in ipairs(sound_files) do -- Pulls all sounds in local loop
    SMODS.Sound{
        key  = key, -- Pulls key of sound
        path = key .. '.ogg', -- Format Balatro uses and what I would do --> "bye.ogg" 
        volume = 1.0, -- Volume of Sound
        pitch = 1.0 -- Pitch Of Sound
    }
end