local item = require("Entidades.item")
local potion ={}

function potion.new()
    local potion = item.new("potion", "life", 50)
    potion.life = 100

    return potion
end
return potion