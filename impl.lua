-- Demo implementation using the Solara UI Library
-- This shows how to create a complete UI using all available components

-- Load the UI library (assuming it's in the same folder or properly required)
local SolaraUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/itcps/cpsui/refs/heads/main/cpsUI"))()

-- Create main window
local ui = SolaraUI.new("Solara Executor - Demo")

-- Add a section header
local headerButton = ui:CreateButton(nil, "🚀 Welcome to Solara UI", function()
    print("Header clicked!")
end)

-- Create some basic buttons
ui:CreateButton(nil, "Execute Script", function()
    print("Executing script...")
end)

ui:CreateButton(nil, "Load Config", function()
    print("Loading configuration...")
end)

ui:CreateButton(nil, "Save Config", function()
    print("Saving configuration...")
end)

-- Add toggles with various features
local aimToggle = ui:CreateToggle(nil, "Aimbot Enable", false, function(state)
    print("Aimbot toggled:", state)
end)

local espToggle = ui:CreateToggle(nil, "ESP Enable", true, function(state)
    print("ESP toggled:", state)
end)

local speedToggle = ui:CreateToggle(nil, "Speed Hack", false, function(state)
    print("Speed hack toggled:", state)
end, true) -- Enable color picker for this toggle

-- Create input fields
local scriptInput = ui:CreateInput(nil, "Enter script URL or code...", function(text, enterPressed)
    if enterPressed then
        print("Script input:", text)
        -- Here you would typically execute the script
    end
end)

local playerInput = ui:CreateInput(nil, "Target player name", function(text, enterPressed)
    if enterPressed then
        print("Target player:", text)
    end
