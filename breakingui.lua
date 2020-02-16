local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
local w = library:CreateWindow('Self Cheats')
local t = w:Toggle('Infinite Health', {flag = "toggle"}, function(d)
    if d then
        _G.looprefill = true
        while _G.looprefill do
        game:GetService("ReplicatedStorage").RemoteEvents.Energy:FireServer(99999999)
        wait(0.1)
        end
        else
        _G.looprefill = false
        end
    end)    

local t2 = w:Toggle('Auto Kill Bad Guys', {flag = "toggle"}, function(e)
    if e then
        _G.loopkillbadguys = true
        while _G.loopkillbadguys do
        for i,v in pairs(game.Workspace.BadGuys:GetChildren()) do
        game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v, 8)
        end
        wait(0.1)
        end
        else
        _G.loopkillbadguys = false
        end
    end)           

local GiveItem = w:Dropdown("Items[Free]", {
    items = _G;
    flag = "memes";
    list = {
        "Gun";
        "Sword";
        "Bat";
        "Medkit";
        "Cure";
        "Chips";
        "Cookie";
        "Bloxy Cola";
        "Pie";
        "Apple";
        "Pizza";
    }
}, function(new)
    warn(new)
    if new == "Gun" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Gun")
    end
    if new == "Sword" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Sword")
    end
    if new == "Bat" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Bat")
    end
    if new == "Medkit" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("MedKit")
    end
    if new == "Cure" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cure")
    end
    if new == "Chips" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Chips")
    end
    if new == "Cookie" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cookie")
    end
    if new == "Bloxy Cola" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Bloxy Cola")
    end
    if new == "Pie" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Pie")
    end
    if new == "Apple" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Apple")
    end
    if new == "Pizza" then
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Pizza")
    end
 end)

local s_2 = library:CreateWindow('Food')
s_2:Toggle('Auto Apple', {flag = "Toggle1"}, function(p)
    if p then
        _G.AutoApple = true
        while _G.AutoApple do
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Apple")
            wait(0.1)
        end 
    else
        _G.AutoApple = false
    end
end)

s_2:Toggle('Auto Cookie', {flag = "Toggle1"}, function(p)
    if p then
        _G.AutoApple = true
        while _G.AutoApple do
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cookie")
            wait(0.1)
        end 
    else
        _G.AutoApple = false
    end
end)

s_2:Toggle('Auto Pie', {flag = "Toggle1"}, function(p)
    if p then
        _G.AutoApple = true
        while _G.AutoApple do
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Pie")
            wait(0.1)
        end 
    else
        _G.AutoApple = false
    end
end)

s_2:Toggle('Auto Chips', {flag = "Toggle1"}, function(p)
    if p then
        _G.AutoApple = true
        while _G.AutoApple do
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Chips")
            wait(0.1)
        end 
    else
        _G.AutoApple = false
    end
end)

s_2:Toggle('Auto Cure', {flag = "Toggle1"}, function(p)
    if p then
        _G.AutoApple = true
        while _G.AutoApple do
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cookie")
            wait(0.1)
        end 
    else
        _G.AutoApple = false
    end
end)

s_2:Toggle('Auto Bloxy Cola', {flag = "Toggle1"}, function(p)
    if p then
        _G.AutoApple = true
        while _G.AutoApple do
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Bloxy Cola")
            wait(0.1)
        end 
    else
        _G.AutoApple = false
    end
end)


 local s = library:CreateWindow('Server')
 local CanBeDropped = s:Button("EnableToolsCanDrop", function()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
        v.CanBeDropped = true
        end
        end
    end)
    
local HealAll = s:Button("Heal All[Hold Medkit]" , function()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        game:GetService("ReplicatedStorage").RemoteEvents.HealPlayer:FireServer(v)
        end
    end)

    local c = library:CreateWindow('Credits')
    c:Button("Join Discord", function()
        syn.write_clipboard("https://discord.gg/7C2CSxW")
    end)        
