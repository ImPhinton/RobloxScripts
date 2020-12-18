local dmg = 20
local range = 3.5
local hitboxmodule = require(game.ReplicatedStorage.Hitboxes)

Enabled = true
local combo = 1

script.Parent.OnServerEvent:Connect(function(player)
    if not Enabled then return end
    local char = player.CHaracter

    Enabled = false

    if combo == 1 then
        local Anim = Script.Swing1
        local playAnim = char.Humanoid:LoadAnimation(Anim)
        playAnim:Play()
        combo = 2
    else
        local Anim = script.Swing2
        local playAnim = char.Humanoid:LoadAnimation(Anim)
        playAnim:Play()
        combo = 1
    end

    local targets = hitboxmodule(char)

    for i,v in pairs(targets) do
        v.Humanoid:TakeDamage(dmg)
    end
    
    wait(.5)
    Enable = true
end)