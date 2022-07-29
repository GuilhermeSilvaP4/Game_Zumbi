local player = require("Entidades.player")
local zumbi = require("Entidades.zumbi")
local potion = require("Entidades.potion")

--Create instances, this variables are objects
local player1 = player.new("Arthur")
local player2 = player.new("Kaua")
local player3 = player.new("Lucas")

local zumbi1 = zumbi.new()
local zumbi2 = zumbi.new()
local zumbi3 = zumbi.new_bomber()

-- Add Inventory
player.get_potion(player1, potion.new())
player.get_potion(player2, potion.new())
player.get_potion(player3, potion.new())

print(player1.name)
print(player1.life)
print(player2.name)
print(player2.life)
print(player3.name)
print(player3.life)

assert(#player1.potions == 1)
assert(#player2.potions == 1)
assert(#player3.potions == 1)

zumbi.attack(zumbi1, player1)
zumbi.attack(zumbi1, player1)
zumbi.attack(zumbi1, player1)
print(player1.name .. " has ".. player1.life .. " of life")
player.use_potion(player1)
zumbi.attack(zumbi1, player1)
zumbi.attack(zumbi1, player1)
zumbi.attack(zumbi3, player1)
player.use_potion(player1)
zumbi.attack(zumbi1, player1)
zumbi.attack(zumbi1, player1)
zumbi.attack(zumbi1, player1)
