local player = {}

function player.new(name)
    local new_player = {
        life = 200,
        potions = {},
        name = name
    }

    function new_player:get_potion(potion)
        table.insert(self.potions, potion)
    end
    
    function new_player:use_potion()
        if self:IsLive() then
        
            if #self.potions > 0 then
                self.life = self.life + self.potions[1].life
                table.remove(self.potions, 1)
            else
                print(self.name .. " does not have potions")
            end  
        end

    end
    
    function new_player:attacked(power)
        if self:IsLive() then
            self.life = self.life - power
            if not self:IsLive() then
                print("After attack " .. self.name .. " died")
            else
                print("After attack " .. self.name .. " has " .. self.life .." of life")
            end
        else
            print(self.name .. " is died!")
        end
    end
    function new_player:Kill()
        if self:IsLive() then
            self.life = 0
            print("Player " .. self.name .. " died")
        else
            print(self.name .. " is died!")
        end
    end
    function new_player:IsLive()
        return self.life > 0
    end
    return new_player
end
return player