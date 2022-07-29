local player = {}

function player.new(name)
    return {
        life = 200,
        potions = {},
        name = name
    }
end

function player.get_potion(player, potion)
    table.insert(player.potions, potion)
end

function player.use_potion(player)
    if #player.potions > 0 then
        player.life = player.life + player.potions[1].life
        table.remove(player.potions, 1)
    else
        print(player.name .. " does not have potions")
    end
end

function player.attacked(player, power)
    if playerIsLive(player) then
        player.life = player.life - power
        if not playerIsLive(player) then
            print("After attack " .. player.name .. " died")
        else
            print("After attack " .. player.name .. " has " .. player.life .." of life")
        end
    else
        print(player.name .. " is died!")
    end
end

function playerIsLive(player)
    return player.life > 0
end

function player.Kill(player)
    if playerIsLive(player) then
        player.life = 0
        print("Player " .. player.name .. " died")
    else
        print(player.name .. " is died!")
    end
end
return player