function Blockbuster.cast_spell(spell_key, strength, repeatable)
    if repeatable == nil then
        repeatable = true
    end

    if strength <= 0 then strength = 1 end
    if strength >= 5 then strength = 4 end

    if not Blockbuster.Spellcasting.Spells then
        print("Mod error: no spells to index")
        return {

        }
    end

    SMODS.calculate_context({bb_pre_spell_cast = true, strength = strength, spell_key = spell_key, repeatable = repeatable})

    G.GAME.current_round.spells_cast = G.GAME.current_round.spells_cast + 1
    G.GAME.current_round.last_spell_cast.key = spell_key
    G.GAME.current_round.last_spell_cast.strength = strength

    if #G.GAME.current_round.spell_queue > 0 then
        local _nextspell = G.GAME.current_round.bb_spell_queue[1]
        spell_key = _nextspell.spell_key
        strength = _nextspell.strength
        table.remove(G.GAME.current_round.bb_spell_queue, 1)
    end

    local _return_table = Blockbuster.Spellcasting.Spells[spell_key]:cast(strength)

    SMODS.calculate_context({bb_cast_spell = true, strength = strength, spell_key = spell_key, repeatable = repeatable})

    if type(_return_table) == 'table' then
        return _return_table
    end
    return {

    }
end

-- Cast random spell
-- Cast spell based on hand
function Blockbuster.cast_spell_using_recipe(caster, list_of_cards)
    if type(list_of_cards) ~= "table" then
        print("Cards given were not a table!")
    end

    if #list_of_cards <= 2 then
        return {}
    end

    local _spellkey = Blockbuster.cards_to_spell_key(list_of_cards)
    local spellstrength = Blockbuster.card_to_spell_level(list_of_cards[3])
    


    return Blockbuster.cast_spell(_spellkey, spellstrength)
end

function Blockbuster.cards_to_spell_key(list_of_cards)
    if #list_of_cards <= 1 then
        return "spell_None_None"
    end

    local suit1 = Blockbuster.card_to_spell_suit(list_of_cards[1])
    local suit2 = Blockbuster.card_to_spell_suit(list_of_cards[2])

    if suit1 == "None" or suit2 == "None" then
        return "spell_None_None"
    end

    local _spellkey = "spell_None_None"
    if type(Blockbuster.Spelltable[suit1]) == 'table' then
        _spellkey = Blockbuster.Spelltable[suit1][suit2]
    end

    if type(_spellkey) == 'string' then
        return _spellkey
    else    
        print("Spellcasting Failed: issues with Spelltable")
        return "spell_None_None"
    end
end

function Blockbuster.card_to_spell_suit(playing_card)
    local suit = playing_card.base.suit
    if SMODS.has_no_suit(playing_card) then
        suit = "None"
    elseif SMODS.has_any_suit(playing_card) then
        suit = "Wild"
    end
    if Blockbuster.valid_spellsuits[suit] then
        return suit
    else
        return "None"
    end

    return suit
end

function Blockbuster.card_to_spell_level(playing_card)
    local strength = 1
    if SMODS.has_no_rank(playing_card) then
        strength = 1
    else
        strength = Blockbuster.id_to_spell_level(playing_card:get_id())
    end

    return strength
end

function Blockbuster.id_to_spell_level(playing_card_id)
    if playing_card_id <= 0 then
        -- Failsafe against custom ranks
        return 1
    end
    if playing_card_id >= 1 and playing_card_id <= 5 then
        return 1
    end
    if playing_card_id >= 6 and playing_card_id <= 10 then
        return 2
    end
    if playing_card_id >= 11 and playing_card_id <= 13 then
        return 3
    end
    if playing_card_id == 14 then
        return 4
    end
    if playing_card_id >= 15 then
        -- Failsafe against custom ranks
        return 4
    end
end
