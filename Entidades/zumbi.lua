local enemy = require("Entidades/enemy")
local player = require("Entidades/player")

local zumbi = {}

function zumbi.new(name, power, category)
    local new_zumbi = enemy.new(name or "phanton", power or 50, category or "phantons")
    new_zumbi.eat_brain = true
    new_zumbi.explode = false

    function new_zumbi:attack(player)
        if self.name == nil then
            print("This zumbi is died")   
        elseif self.explode then
            print("Zumbi ".. self.name .. " attacked "..player.name)
            player:Kill()
            print("Zumbi " .. self.name .. " exploded")
            return new_zumbi:kill()
        else
            print("Zumbi ".. self.name.." attacked " .. player.name .. "!")
            player:attacked(self.power)
            return new_zumbi
        end
    end
    function new_zumbi:kill()
        self.name = nil
        return nil
    end
    return new_zumbi
end
function zumbi.new_bomber()
    local zumbi = zumbi.new()
    zumbi.eat_brain = false
    zumbi.explode = true
    return zumbi
end
return zumbi
