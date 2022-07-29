local enemy = {}

function enemy.new(name, power, category)
    return {
        name = name,
        power = power,
        category = category
            }
end

return enemy
