local text = script.Parent

local player = game.Players.LocalPlayer
local level = player.LevelsInfo.Level

text.Text = "Level"...level.Value

level.Changed:Connect(function(newLevel)
    text.Text = "Level"...level.Value
end)