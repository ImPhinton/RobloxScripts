game.Players.PlayersAdded:Connect(function(player)
    local levelInfo = Instance.new("Folder")
    levelInfo.Name = "LevelsInfo"
    levelInfo.Parent = player

    local level = Instance.new("IntValue")
    level.Name = "Level"
    level.Value = 1
    level.Parent = levelInfo

    local exp = Instance.new("IntValue")
    exp.Name = "Experience"
    exp.Value = 0
    exp.Parent = levelInfo

    local xpNeeded = math.floor(3 * 1.3 ^ level.Valu)e

    exp.Changed:Connect(function(newExp)
        if newExp >= xpNeeded then
            level.Value += 1
            exp.Value -= xpNeeded
            xpNeeded = math.floor(3 * 1.3 ^ level.Value)
        end
    end)
end)