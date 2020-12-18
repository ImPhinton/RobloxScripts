local handle = script.Parent:FindFirstChild("Handle"):Clone

script.Parent:FindFirstChild("Handle"):Destroy()

script.Parent.Equip.OnServerEvent:Connect(function()
    local char = script.Parent.Parent
    if char:IsA("Model")then
        if not char:FindFirstChild("Handle") then
            local rhand = char:FindFirstChild("RightHand")
            handle.CFrame = rHand.CFrame * CFrame.new(0,0,-1.75) * CFrame.Angles(-math.rad(180),0,math.rad(180))
            local weld = Instance.new("Weld")
            weld.Part0 = rHand
            weld.Part1 = handle
            weld.C0 = rHand.CFrame:inverse() * rHand.CFrame
            weld.C1 = handle.CFrame:inverse() * rHand.CFrame
            weld.Name = 'handleweld'
            weld.Parent = rHand
            handle.Parent = char
        end
    end
end)