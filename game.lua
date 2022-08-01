local player = require("Entidades/player")
local zumbi = require("Entidades/zumbi")
local potion = require("Entidades/potion")

--Create instances, this variables are objects
local player1 = player.new("Arthur")
local player2 = player.new("Kaua")
local player3 = player.new("Lucas")

local zumbi1 = zumbi.new("Troll", 40, "Trols")
local zumbi2 = zumbi.new()
local zumbi3 = zumbi.new_bomber()
local zumbi4 = zumbi.new_bomber()
-- Add Inventory
player1:get_potion(potion.new())
player2:get_potion(potion.new())
player3:get_potion(potion.new())

print(player1.name)
print(player1.life)
print(player2.name)
print(player2.life)
print(player3.name)
print(player3.life)

assert(#player1.potions == 1)
assert(#player2.potions == 1)
assert(#player3.potions == 1)

zumbi1:attack(player1)
zumbi2:attack(player1)
zumbi4:attack(player1)
zumbi4:attack(player2)
print(player1.name .. " has ".. player1.life .. " of life")
player1:use_potion()
print(player1.name .. " has ".. player1.life .. " of life")

zumbi1:attack(player1)
zumbi1:attack(player1)
zumbi1:attack(player1)


--[[
player1:use_potion()
zumbi1:attack(player1)
]]--