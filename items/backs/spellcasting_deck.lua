SMODS.Back {
    name = "Spellslinger's Deck",
    key = "spellslinger",
    atlas = "deck",
    pos = {x = 3, y = 2},
    config = {
    },
    apply = function()
        G.GAME.starting_params.blockbuster_spellcasting_deck = true
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.scoring_hand[1] == context.other_card then
            if #G.hand.cards > 2 then
                local _result = Blockbuster.cast_spell_using_recipe(context.other_card, G.hand.cards)
                -- card_eval_status_text(context.other_card, 'extra', nil, nil, nil,
                -- { message = localize('k_spell_cast'), colour = G.C.PURPLE })
                print(_result)
                return _result
            end
        end
    end
}