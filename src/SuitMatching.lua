function Blockbuster.subscribe_spell_to_suits(spell, suit1, suit2, nonsymmetrical)
    if not Blockbuster.Spelltable[suit1] then
        Blockbuster.Spelltable[suit1] = {}
        Blockbuster.valid_spellsuits[suit1] = true
    end

    Blockbuster.Spelltable[suit1][suit2] = spell
    
    if not nonsymmetrical then
        Blockbuster.subscribe_spell_to_suits(spell, suit2, suit1, true)
    end
end

function Blockbuster.get_spell_by_suits(suit1, suit2)
    if Blockbuster.Spelltable[suit1] then
        if Blockbuster.Spelltable[suit1][suit2] then
            return Blockbuster.Spelltable[suit1][suit2]
        end
    end

    print("No valid spell registered")
    -- RETURN DUMMY SPELL
end

Blockbuster.Spelltable = {
    -- DUMMY ENTRY
    -- [SUIT 1] = {
    -- [SUIT 1.1] = SPELL KEY
    --}
}

Blockbuster.valid_spellsuits = {

}