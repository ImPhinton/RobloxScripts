--This is a module script--
local module = {}

return function(char,range)
    local root = char.HumanoidRootPart
    local targets = {}
    for i,v in pairs(workspace.Attackable:GetChildren()) do
        if v ~= char and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
            local inrange = ((root.CFrame * CFrame.new(0,2,-range).p) - v.HumanoidRootPart.Position).magnitude
            if inrange <= 5 then
                table.insert(targets,v)
            end
        end
    end
    return targets
end