local enemy = require("Entidades.enemy")
local player = require("Entidades.player")

local zumbi = {}

function zumbi.new()
    local zumbi = enemy.new("Phanton", 50, "zumbis")
    zumbi.eat_brain = true
    zumbi.explode = false

    return zumbi
end

function zumbi.new_bomber()
    local zumbi = zumbi.new()
    zumbi.eat_brain = false
    zumbi.explode = true

    return zumbi
end

function zumbi.attack(zumbi, player_instance)
    if zumbi == nil then
        print("This zumbi is died")     
    elseif zumbi.explode then
        print("Zumbi ".. zumbi.name .. " attacked "..player_instance.name)
        player.Kill(player_instance)
        print("Zumbi " .. zumbi.name .. " exploded")
    else
        print("Zumbi attacked " .. player_instance.name .. "!")
        player.attacked(player_instance, zumbi.power)
    end
end

return zumbi
