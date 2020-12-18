local tool = script.Parent

tool.Activated:Connect(function()
    script.Clicked:FireServer()
end)