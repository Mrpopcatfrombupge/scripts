local ScreenGui = Instance.new("ScreenGui")

local Frame = Instance.new("Frame")

local UICorner = Instance.new("UICorner")

local TextLabel = Instance.new("TextLabel")

local UICorner_2 = Instance.new("UICorner")

local TextButton = Instance.new("TextButton")

local UICorner_3 = Instance.new("UICorner")

local TextButton_2 = Instance.new("TextButton")

local UICorner_4 = Instance.new("UICorner")

local TextButton_3 = Instance.new("TextButton")

local UICorner_5 = Instance.new("UICorner")

local toggle = false

local toggle2 = false

local toggle3 = false

local t = 10;

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui

Frame.BackgroundColor3 = Color3.fromRGB(80, 255, 80)

Frame.Position = UDim2.new(0.248681232, 0, 0.288164675, 0)

Frame.Size = UDim2.new(0, 178, 0, 170)

Frame.Active = true

Frame.Draggable = true

UICorner.CornerRadius = UDim.new(0.0900000036, 8)

UICorner.Parent = Frame

TextLabel.Parent = Frame

TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextLabel.BackgroundTransparency = 1.020

TextLabel.Size = UDim2.new(0, 178, 0, 50)

TextLabel.Font = Enum.Font.DenkOne

TextLabel.Text = "Made by Mr pop cat minecraft - roblox"

TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)

TextLabel.TextScaled = true

TextLabel.TextSize = 14.000

TextLabel.TextWrapped = true

UICorner_2.Parent = TextLabel

TextButton.Parent = Frame

TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextButton.Position = UDim2.new(-0.00377938151, 0, 0.411347866, 0)

TextButton.Size = UDim2.new(0, 53, 0, 59)

TextButton.Font = Enum.Font.Arcade

TextButton.Text = "Inf Cash"

TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)

TextButton.TextScaled = true

TextButton.TextSize = 14.000

TextButton.TextWrapped = true

TextButton.MouseButton1Down:connect(function()

	toggle = not toggle	if toggle == false then

		TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

	end

	while toggle == true do

	    task.wait()

	    local hue = tick() % t / t

	    local colory = Color3.fromHSV(hue,1,1)

	    if toggle == false then

		    TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

		else

    	    TextButton.BackgroundColor3 = colory

            for i,v in pairs(game:GetService("Workspace").Tools:GetChildren()) do

                local args = {

                    [1] = {

                        [1] = v.Name

                    },

                    [2] = {

                        ["touched"] = {

                            [1] = "v.Name"

                        },

                        ["distance"] = math.huge --edit this to like 9999999999999999 if you want to try getting on the leaderboard.

                    }

                }

        

                game:GetService("ReplicatedStorage").TShots.Actions.Default.Remotes.Finish:InvokeServer(unpack(args))

	        end

        end

    end

end)

UICorner_3.Parent = TextButton

TextButton_2.Parent = Frame

TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextButton_2.Position = UDim2.new(0.350153178, 0, 0.411347866, 0)

TextButton_2.Size = UDim2.new(0, 53, 0, 59)

TextButton_2.Font = Enum.Font.Arcade

TextButton_2.Text = "Auto Egg"

TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)

TextButton_2.TextScaled = true

TextButton_2.TextSize = 14.000

TextButton_2.TextWrapped = true

TextButton_2.MouseButton1Down:connect(function()

	toggle2 = not toggle2

	if toggle2 == false then

		TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

	end

	while toggle2 == true do

		task.wait()

		local huep = tick() % t / t

	    local coloru = Color3.fromHSV(huep,1,1)

	    if toggle2 == false then

		    TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

		else

    	    TextButton_2.BackgroundColor3 = coloru

    		local args = {

    			[1] = "9"

    		}

    

    		game:GetService("ReplicatedStorage").Boxes.Core.Default.Remotes.Buy:InvokeServer(unpack(args))

	    end	

    end

end)

UICorner_4.Parent = TextButton_2

TextButton_3.Parent = Frame

TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

TextButton_3.Position = UDim2.new(0.704085827, 0, 0.411347866, 0)

TextButton_3.Size = UDim2.new(0, 53, 0, 59)

TextButton_3.Font = Enum.Font.Arcade

TextButton_3.Text = "Auto Upgrade"

TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)

TextButton_3.TextScaled = true

TextButton_3.TextSize = 14.000

TextButton_3.TextWrapped = true

TextButton_3.MouseButton1Down:connect(function()

	toggle3 = not toggle3

	if toggle3 == false then

		TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

	end

	while toggle3 == true do

	    task.wait()

	    local huen = tick() % t / t

	    local colorn = Color3.fromHSV(huen,1,1)

	    if toggle3 == false then

		    TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

		else

    	    TextButton_3.BackgroundColor3 = colorn

    		local args = {

    			[1] = "walkSpeed"

    		}

    

    		game:GetService("ReplicatedStorage").Upgrades.Core.Default.Remotes.Upgrade:InvokeServer(unpack(args))

    

    

    

    		local args = {

    			[1] = "itemSpeed"

    		}

    

    		game:GetService("ReplicatedStorage").Upgrades.Core.Default.Remotes.Upgrade:InvokeServer(unpack(args))

    

    

    

    		local args = {

    			[1] = "shootDistance"

    		}

    

    		game:GetService("ReplicatedStorage").Upgrades.Core.Default.Remotes.Upgrade:InvokeServer(unpack(args))

	    end

    end

end)

UICorner_5.Parent = TextButton_3
