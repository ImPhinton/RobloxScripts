local bar = script.Parent
local text = bar.Parent.ExpText

Local player = game.Players.LocalPlayer
local level = player.LevelsInfo.Level
local exp = player.LevelsInfo.Experience
local expNeeded = math.floor(3 * 1.3 ^ Level.Value)

text.Text = exp.Value.."/"..expNeeded

local change = expValue / expNeeded
bar.TweenSize(UDim2.new(change,0,1,0), "In", "Linear", 0.5)

exp.Changed:Connect(function()
    expNeeded = math.floor(3 * 1.3 ^ level.Value)
    text.Text = exp.Value.."/"..expNeeded

    local change = exp.Value / expNeeded
    bar.TweenSize(UDim2.new(change,0,1,0), "In", "Linear", 0.5)
end)

level.Changed:Connect(function()
    expNeeded = math.floor(3 * 1.3 ^ level.Value)
    text.Text = exp.Value.."/"..expNeeded

    local change = exp.Value / expNeeded
    bar.TweenSize(UDim2.new(change,0,1,0), "In", "Linear", 0.5)
end)