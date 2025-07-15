return {
    descriptions = {
        Back={},
        Blind={},
        Edition={},
        Enhanced={},
        Joker={
            j_mer_megapolis = {
                name = "Megapolis",
                text = {
                    "After each scoring hand",
                    "divide the total score by {C:attention}2",
                    "{C:gold}+$#1#{} at the end of round"
                }
            },
            j_mer_druid = {
                name = "Druid",
                text = {
                "Applies {C:green}Rooted{} to",
                "all scoring cards and {X:mult,C:white}+X1{} Mult",
                "per Rooted Card in deck",
                "Currently: {X:mult,C:white}X#1#{} Mult"
                }
            },
            j_mer_lord_of_chips = {
                name = "Lord Of Chips",
                text = {
                "{X:chips,C:white}+X1{} Chips per {C:attention}K{}",
                "scored and divides Mult by {C:attention}2{}",
                "Currently: {X:chips,C:white}X#1#{} Chips"
                }
            },
            j_mer_funky_joker = {
                name = "Funky Joker",
                text = {
                "This {C:attention}Joker{} gains",
                "{C:mult}+#1#{} Mult & {C:gold}+$#2#{}", 
                "each {C:attention}Blind{} skipped",
                "{C:inactive}($ applied end of round){}",
                "{C:inactive} Currently:{} {C:mult}+#3#{}{C:inactive} & {C:gold}$#4#"
                }
            },
        },
        Other={},
        Planet={},
        Spectral={},
        Stake={},
        Tag={},
        Tarot={},
        Voucher={},
    },
    misc = {
        achievement_descriptions={},
        achievement_names={},
        blind_states={},
        challenge_names={},
        collabs={},
        dictionary={},
        high_scores={},
        labels={},
        poker_hand_descriptions={},
        poker_hands={},
        quips={},
        ranks={},
        suits_plural={},
        suits_singular={},
        tutorial={},
        v_dictionary={},
        v_text={},
    },
}