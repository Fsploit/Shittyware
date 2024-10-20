# Acrylic fluent
This UI fluent shitty ware
- [Discord](https://discord.gg/fluxusz)

- Why choose?

1. It cool 
2. fleuent 
3. support mobile 
4. nothing

![Screenshot 2024-10-15 193045](https://github.com/user-attachments/assets/04d94fd1-b5be-4dd0-8ebb-e9bee932e05d)
## Create Library
```lua
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Fsploit/Shittyware/refs/heads/main/Source'))();
```

## Themes
Note: run this code before create window
```lua
Library.Theme:Default()
```
```lua
Library.Theme:Catppuccin()
```
```lua
Library.Theme:Neverlose()
```
```lua
Library.Theme:Dark()
```
```lua
Library.Theme:Light()
```
```lua
Library.Theme:Discord()
```
```lua
Library.Theme:Houston()
```
```lua
Library.Theme:Matcha()
```

## Create Window
```lua
local Window = Library:CreateWindow({
	Title = 'Acrylic',
	Logo = "rbxassetid://7733920644",
});
```

## Create Dialogs

![Screenshot 2024-10-16 144720](https://github.com/user-attachments/assets/2fa97e73-8b2c-4b95-96bd-629c7376ea3a)

```lua
Window:Dialog({
	Title = "Dialog",
	Buttons = {
		{
			Title = 'Huh?',
			Callback = function()
				
			end,
		},{
			Title = 'KKK',
			Callback = function()
				
			end,
		},
		{
			Title = 'No?',
			Callback = function()

			end,
		},
		{
			Title = 'Kak',
			Callback = function()

			end,
		}
	}
})
```

## Create Notification

![Screenshot 2024-10-16 161000](https://github.com/user-attachments/assets/068b0b09-1100-48d7-9eb0-61a1bc6708e5)
```lua
Window:Notify({
	Title = 'Notification',
	Description = "Hello, World\n"..Library:HightlightSource('print("Hello, World")'),
	Duration = 5
})
```

## Create Block
```lua
ExampleTab:AddBlock('Example')
```

## Create Button
```lua
ExampleTab:AddButton({
	Title = 'Button',
	Callback = function()
		print('Click!')
	end,
})
```

## Create Toggle
```lua
ExampleTab:AddToggle({
	Title = 'Toggle',
	Default = false,
	Callback = function(value)
		print('Toggle!',value)
	end,
})
```

## Create Slider
```lua
ExampleTab:AddSlider({
	Title = 'Slider',
	Max = 100,
	Min = 1,
	Default = 25,
	Round = 1,
	Callback = function(value)
		print('Slider!',value)
	end,
})
```

## Create Keybind
```lua
ExampleTab:AddKeybind({
	Title = 'Keybind',
	Default = "LeftControl",
	Callback = function(value)
		print('Keybind!',value)
	end,
})
```

## Create Textbox
```lua
ExampleTab:AddTextbox({
	Title = 'Textbox',
	PlaceHolder = 'Type something',
	--Default = "Text",
	Callback = function(value)
		print('Textbox!',value)
	end,
})
```

## Create Dropdown
```lua
ExampleTab:AddDropdown({
	Title = 'Dropdown',
	Values = {1,2,3,4,5,6,7,8,9,10},
	Default = 5,
	Callback = function(value)
		print('Dropdown!',value)
	end,
})
```

## Create Dropdown (Multiple)
```lua
ExampleTab:AddDropdown({
	Title = 'Multiple Dropdown',
	Values = {1,2,3,4,5,6,7,8,9,10},
	Default = {3,4,5,6,7},
	Multi = true,
	MaxMulti = 10,
	Callback = function(value)
		print('Multiple Dropdown!',value)
	end,
})
```

## Create Paragraph
```lua
ExampleTab:AddParagraph({
	Title = 'Paragraph',
	Description = "Description\n[1]: Example"
})
```

### Create Lua Code
```lua
ExampleTab:AddParagraph({
	Title = 'Paragraph',
	Description = 'This is Lua Script!\n'..Library:HightlightSource([[
local function primes(n)
    local function isPrime(n)
        for i = 2, math.sqrt(n) do
            if n % i == 0 then
                return false
            end
        end
        return true
    end
    for i = 2, n do
        if isPrime(i) then
            print(i)
        end
    end
end

primes(20)
	]])
})
```

# Functions

### Disable Animation
```lua
Library.PerformanceMode = true;
```

### Change UI Size
```lua
Window:Resize(Library.SizeLibrary.Default) -- UDim2
```

# Example Code
```lua
local Library = loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/Fsploit/Shittyware/refs/heads/main/Source'))();

--Library.Theme:Houston()

local Window = Library:CreateWindow({
	Title = 'Acrylic fleuent - '..Library.Version..' '..Library.TextEffect:AddColor('by Catsus & Fsploit',Color3.fromRGB(0, 255, 238)),
	Logo = "rbxassetid://7733920644",
});

local ExampleTab = Window:AddTab({
	Title = 'Example',
	Icon = 'home',
});

local SettingsTab = Window:AddTab({
	Title = 'Settings',
	Icon = 'settings',
});

ExampleTab:AddBlock('Example')

ExampleTab:AddButton({
	Title = 'Button',
	Callback = function()
		print('Click!')
	end,
})

ExampleTab:AddToggle({
	Title = 'Toggle',
	Default = false,
	Callback = function(value)
		print('Toggle!',value)
	end,
})

ExampleTab:AddSlider({
	Title = 'Slider',
	Max = 100,
	Min = 1,
	Default = 25,
	Round = 1,
	Callback = function(value)
		print('Slider!',value)
	end,
})

ExampleTab:AddKeybind({
	Title = 'Keybind',
	Default = "LeftControl",
	Callback = function(value)
		print('Keybind!',value)
	end,
})


ExampleTab:AddTextbox({
	Title = 'Textbox',
	PlaceHolder = 'Type something',
	--Default = "Text",
	Callback = function(value)
		print('Textbox!',value)
	end,
})


ExampleTab:AddDropdown({
	Title = 'Dropdown',
	Values = {1,2,3,4,5,6,7,8,9,10},
	Default = 5,
	Callback = function(value)
		print('Dropdown!',value)
	end,
})

ExampleTab:AddDropdown({
	Title = 'Multiple Dropdown',
	Values = {1,2,3,4,5,6,7,8,9,10},
	Default = {3,4,5,6,7},
	Multi = true,
	MaxMulti = 10,
	Callback = function(value)
		print('Multiple Dropdown!',value)
	end,
})

ExampleTab:AddParagraph({
	Title = 'Paragraph',
	Description = "Device Supported:\n[Mobile]: âœ…\n[PC]: âœ…\n[Console]: âœ…\n\nExecutor Supported:\nSolara\nZolara\nSynapse Z\nWave\nTrigon\nCode X\nArceus X\nFluxus"
})

SettingsTab:AddBlock('Settings')

SettingsTab:AddButton({
	Title = "Reset UI Size",
	Callback = function()
		Window:Resize(Library.SizeLibrary.Default)
	end,
})

SettingsTab:AddToggle({
	Title = 'Performance',
	Default = false,
	Callback = function(a)
		Library.PerformanceMode = a;
	end,
})

SettingsTab:AddBlock("")

SettingsTab:AddButton({
	Title = "Destroy UI",
	Callback = function()
		Window:Destroy()
	end,
})
```

# Key System
![Screenshot 2024-10-15 193017](https://github.com/user-attachments/assets/c9822e0b-2bb7-4261-973e-b5113920a4bf)
```lua
local Window = Library:CreateWindow({
	Title = 'Acrylic',
	Logo = "rbxassetid://7733920644",
	KeySystem = true,
	KeySystemInfo = {
		Title = "- Key System -",
		OnGetKey = function()
			return setclipboard('https://example.com/getkey?hwid=')
		end,
		OnLogin = function(key)
			if key == "1234" then
				wait(0.1);
				return true;
			end;
			
			wait();
			
			return false;
		end,
	}
});
```
