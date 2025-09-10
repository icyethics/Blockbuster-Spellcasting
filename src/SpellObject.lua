Blockbuster.Spellcasting.Spells = {}

Blockbuster.Spellcasting.Spell = SMODS.Center:extend({
    obj_table = Blockbuster.Spellcasting.Spells,
    obj_buffer = {},
    class_prefix = "spell",
    rng_buffer = {},
    set = "Spell",
    
    atlas = "blockbuster_spells",
    pos = {x = 0, y = 0},

    discovered = false,
    required_params = {
        "key",
    },
    inject = function() end,
    set_card_type_badge = function(self, card, badges)
        badges[#badges+1] = create_badge(localize('k_spell'), G.C.PURPLE, G.C.WHITE, 1.2 )
    end,
    cast = function(strength)
        local _obj = SMODS.Spells[self.key]
        G.GAME.current_round.spells_cast = G.GAME.current_round.spells_cast + 1
        G.GAME.current_round.last_spell_cast.key = self.key
        G.GAME.current_round.last_spell_cast.strength = strength
        if _obj and _obj.cast and type(_obj.cast) == 'function' then
            _obj:cast()
        end
        return true
    end
})