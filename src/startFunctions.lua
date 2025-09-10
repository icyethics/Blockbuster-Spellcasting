local igo = Game.start_up
Game.start_up = function(self)
    local ret = igo(self)
    return ret
end

local _o_gsr = Game.start_run
function Game:start_run(args)
    local ret = _o_gsr(self, args)
    return ret
end

local igo = Game.init_game_object
Game.init_game_object = function(self)
    local ret = igo(self)
    ret.current_round.spells_cast = 0
    ret.current_round.last_spell_cast.key = nil
    ret.current_round.last_spell_cast.strength = 0
end