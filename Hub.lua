local player = game.Players.LocalPlayer
--BRHU UPDATEsddddddddddddddddddddddddd
local V = "1.3.9"

local repo = 'https://raw.githubusercontent.com/MassiveUnit/anotherthing/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local KeybindToggle
local InstaPoint
local AutoFarmToggle



function SendNotify(msg)
    game.StarterGui:SetCore("SendNotification", {
    Title = "Massive Unit's Hub"; -- Required. Has to be a string!
    Text = msg; -- Required. Has to be a string!
   -- Icon = "rbxassetid://9583671056"; -- Optional, defaults to "" (no icon)
    Duration = 5; -- Optional, defaults to 5 seconds
})	
end

function AddPointsFF()
        local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}
if KeybindToggle == true then
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
end
end

function AddPointsFF_AF()
        local args = {
    [1] = {
        [1] = "Server",
        [2] = "RoundManager",
        [3] = "UpdateScore"
    },
    [2] = {
        [1] = 350
    }
}

if AutoFarmToggle == true or InstaPoint == true then
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
end
end

SendNotify("Thank you for using my script "..player.Name.." <3")
SendNotify("This script will have more updates and hopefully more games :)")

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'Massive Unit`s Hub | Version '..V..'',
    Center = true, 
    AutoShow = true,
})

-- You do not have to set your tabs & groups up this way, just a prefrence.
local Tabs = {
    -- Creates a new tab titled Main
    MainY = Window:AddTab('Points Hack'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.MainY:AddLeftGroupbox('-----------Funky Friday-----------')
--[[
LeftGroupBox:AddToggle('TogglePoints', {
    Text = 'Toggle Points KeyBinds',
    Default = false, -- Default value (true / false)
    Tooltip = 'When you press any of your Keybinds , you`ll get 350 points each time', -- Information shown when you hover over the toggle
})
--]]
LeftGroupBox:AddLabel('Toggle Points KeyBinds'):AddKeyPicker('TogglePoints', {

    Default = 'Minus', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 

    Mode = 'Toggle', -- Modes: Always, Toggle, Hold

    Text = 'Toggle Points KeyBinds', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

LeftGroupBox:AddLabel('Toggle Instant Full Score'):AddKeyPicker('ToggleInstantPoints', {

    Default = 'Plus', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 

    Mode = 'Toggle', -- Modes: Always, Toggle, Hold

    Text = 'Toggle Instant Full Score', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})
--[[
Toggles.TogglePoints:OnChanged(function()
    KeybindToggle = Toggles.TogglePoints.Value

    print('Toggle changed to:', Toggles.TogglePoints.Value)
    print('KeybindToggle changed to :', KeybindToggle)
end)

LeftGroupBox:AddToggle('ToggleInstantPoints', {
    Text = 'Toggle Instant Full Score',
    Default = false, -- Default value (true / false)
    Tooltip = 'ez game', -- Information shown when you hover over the toggle
})

Toggles.ToggleInstantPoints:OnChanged(function()
    InstaPoint = Toggles.ToggleInstantPoints.Value

    print('IntantPoints Toggle changed to:', Toggles.ToggleInstantPoints.Value)
    print('InstaPoint changed to :', InstaPoint)
    while InstaPoint == true do
    wait(0.025)
    AddPointsFF_AF()
    end
end)
--]]

local ResetButton = LeftGroupBox:AddButton('Reset Character', function()
    player.Character.Head:Destroy()
end)

-- This should print to the console: "My toggle state changed! New value: false"
--Toggles.MyToggle:SetValue(false)

-- Groupbox:AddButton
-- Arguments: Text, Callback

LeftGroupBox:AddLabel('-------------Keybinds-------------')

LeftGroupBox:AddLabel('Left Key'):AddKeyPicker('LeftKeybind', {

    Default = 'A', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 

    Mode = 'Hold', -- Modes: Always, Toggle, Hold

    Text = 'Left Key', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

LeftGroupBox:AddLabel('Down Key'):AddKeyPicker('DownKeybind', {

    Default = 'S', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 

    Mode = 'Hold', -- Modes: Always, Toggle, Hold

    Text = 'Down Key', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

LeftGroupBox:AddLabel('Up Key'):AddKeyPicker('UpKeybind', {

    Default = 'W', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 

    Mode = 'Hold', -- Modes: Always, Toggle, Hold

    Text = 'Up Key', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

LeftGroupBox:AddLabel('Right Key'):AddKeyPicker('RightKeybind', {

    Default = 'D', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 

    Mode = 'Hold', -- Modes: Always, Toggle, Hold

    Text = 'Right Key', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})

-- OnClick is only fired when you press the keybind and the mode is Toggle
-- Otherwise, you will have to use Keybind:GetState()
LeftGroupBox:AddLabel('-------------AutoFarm-------------')

LeftGroupBox:AddToggle('AutoFarmThing', {
    Text = 'Auto-Farm | USE AUTO-PLAYER',
    Default = false, -- Default value (true / false)
    Tooltip = 'Teleports to Animdude Boss and spams Instant Full Score', -- Information shown when you hover over the toggle
})

Toggles.AutoFarmThing:OnChanged(function()
    AutoFarmToggle = Toggles.AutoFarmThing.Value
    print('AutoFarmThing Toggle changed to:', Toggles.AutoFarmThing.Value)
    while AutoFarmToggle == true do
    wait(0.025)
    if player.Character.HumanoidRootPart.Anchored == true then
    AddPointsFF_AF()
    elseif player.Character.HumanoidRootPart.Anchored == false then
    player.Character.HumanoidRootPart.CFrame = CFrame.new(-219.7686, 69.6844788, 5.25556374)
    end
    end
end)

--local metadata = urlLoad("https://raw.githubusercontent.com/wally-rblx/funky-friday-autoplay/main/metadata.lua")
local httpService = game:GetService('HttpService')

local framework, scrollHandler, network
local counter = 0

while true do
    for _, obj in next, getgc(true) do
        if type(obj) == 'table' then 
            if rawget(obj, 'GameUI') then
                framework = obj;
            elseif type(rawget(obj, 'Server')) == 'table' then
                network = obj;     
            end
        end

        if network and framework then break end
    end

    for _, module in next, getloadedmodules() do
        if module.Name == 'ScrollHandler' then
            scrollHandler = module;
            break;
        end
    end 

    if (type(framework) == 'table' and typeof(scrollHandler) == 'Instance' and type(network) == 'table') then
        break
    end

    counter = counter + 1
    if counter > 6 then
        fail(string.format('Failed to load game dependencies. Details: %s, %s, %s', type(framework), typeof(scrollHandler), type(network)))
    end
    wait(1)
end

local runService = game:GetService('RunService')
local userInputService = game:GetService('UserInputService')
local virtualInputManager = game:GetService('VirtualInputManager')

local random = Random.new()

local task = task or getrenv().task;
local fastWait, fastSpawn = task.wait, task.spawn;

-- firesignal implementation
-- hitchance rolling
local fireSignal, rollChance do
    -- updated for script-ware or whatever
    -- attempted to update for krnl

    function fireSignal(target, signal, ...)
        -- getconnections with InputBegan / InputEnded does not work without setting Synapse to the game's context level
        set_identity(2)
        local didFire = false
        for _, signal in next, getconnections(signal) do
            if type(signal.Function) == 'function' and islclosure(signal.Function) then
                local scr = rawget(getfenv(signal.Function), 'script')
                if scr == target then
                    didFire = true
                    pcall(signal.Function, ...)
                end
            end
        end
        -- if not didFire then fail"couldnt fire input signal" end
        set_identity(7)
    end

    -- uses a weighted random system
    -- its a bit scuffed rn but it works good enough

    function rollChance()
        -- if (//library.flags.autoPlayerMode == 'Manual') then
        if Options.AutoplayerMode.Value == 'Manual' then
            if (Options.SickBind:GetState()) then return 'Sick' end
            if (Options.GoodBind:GetState()) then return 'Good' end
            if (Options.OkayBind:GetState()) then return 'Ok' end
            if (Options.BadBind:GetState()) then return 'Bad' end

            return 'Bad' -- incase if it cant find one
        end

        local chances = {
            { 'Sick', Options.SickChance.Value },
            { 'Good', Options.GoodChance.Value },
            { 'Ok', Options.OkChance.Value },
            { 'Bad', Options.BadChance.Value },
            { 'Miss' , Options.MissChance.Value },
        }

        table.sort(chances, function(a, b)
            return a[2] > b[2]
        end)

        local sum = 0;
        for i = 1, #chances do
            sum += chances[i][2]
        end

        if sum == 0 then
            return chances[random:NextInteger(1, #chances)][1]
        end

        local initialWeight = random:NextInteger(0, sum)
        local weight = 0;

        for i = 1, #chances do
            weight = weight + chances[i][2]

            if weight > initialWeight then
                return chances[i][1]
            end
        end

        return 'Sick'
    end
end

-- autoplayer
local chanceValues do
    chanceValues = { 
        Sick = 96,
        Good = 92,
        Ok = 87,
        Bad = 75,
    }

    local keyCodeMap = {}
    for _, enum in next, Enum.KeyCode:GetEnumItems() do
        keyCodeMap[enum.Value] = enum
    end

    if shared._unload then
        pcall(shared._unload)
    end

    function shared._unload()
        if shared._id then
            pcall(runService.UnbindFromRenderStep, runService, shared._id)
        end

        UI:Unload()

        for i = 1, #shared.threads do
            coroutine.close(shared.threads[i])
        end

        for i = 1, #shared.callbacks do
            task.spawn(shared.callbacks[i])
        end
    end

    shared.threads = {}
    shared.callbacks = {}

    shared._id = httpService:GenerateGUID(false)

    local rng = Random.new()
    runService:BindToRenderStep(shared._id, 1, function()
        --if (not library.flags.autoPlayer) then return end
        
        if (not Toggles.Autoplayer) or (not Toggles.Autoplayer.Value) then 
            return 
        end

        local currentlyPlaying = framework.SongPlayer.CurrentlyPlaying

        if typeof(currentlyPlaying) ~= 'Instance' or not currentlyPlaying:IsA('Sound') then 
            return 
        end

        local arrows = framework.UI:GetNotes()
        local count = framework.SongPlayer:GetKeyCount()
        local mode = count .. 'Key'

        local arrowData = framework.ArrowData[mode].Arrows
        for i, arrow in next, arrows do
            -- todo: switch to this (https://i.imgur.com/pEVe6Tx.png)
            local ignoredNoteTypes = { Death = true, Mechanic = true, Poison = true }

            if type(arrow.NoteDataConfigs) == 'table' then 
                if ignoredNoteTypes[arrow.NoteDataConfigs.Type] then 
                    continue
                end
            end

            if (arrow.Side == framework.UI.CurrentSide) and (not arrow.Marked) and currentlyPlaying.TimePosition > 0 then
                local position = (arrow.Data.Position % count) .. '' 

                local hitboxOffset = 0 do
                    local settings = framework.Settings;
                    local offset = type(settings) == 'table' and settings.HitboxOffset;
                    local value = type(offset) == 'table' and offset.Value;

                    if type(value) == 'number' then
                        hitboxOffset = value;
                    end

                    hitboxOffset = hitboxOffset / 1000
                end

                local songTime = framework.SongPlayer.CurrentTime do
                    local configs = framework.SongPlayer.CurrentSongConfigs
                    local playbackSpeed = type(configs) == 'table' and configs.PlaybackSpeed

                    if type(playbackSpeed) ~= 'number' then
                        playbackSpeed = 1
                    end

                    songTime = songTime /  playbackSpeed
                end

                local noteTime = math.clamp((1 - math.abs(arrow.Data.Time - (songTime + hitboxOffset))) * 100, 0, 100)

                local result = rollChance()
                arrow._hitChance = arrow._hitChance or result;

                local hitChance = (Options.AutoplayerMode.Value == 'Manual' and result or arrow._hitChance)
                if hitChance ~= "Miss" and noteTime >= chanceValues[arrow._hitChance] then
                    fastSpawn(function()
                        arrow.Marked = true;
                        local keyCode = keyCodeMap[arrowData[position].Keybinds.Keyboard[1]]

                        if Options.PressMode.Value == 'Key press' then
                            virtualInputManager:SendKeyEvent(true, keyCode, false, nil)
                        else
                            virtualInputManager:SendKeyEvent(true, keyCode, false, nil)
                        end

                        local arrowLength = arrow.Data.Length or 0
                        local isHeld = arrowLength > 0

                        local delayMode = Options.DelayMode.Value

                        local minDelay = isHeld and Options.HeldDelayMin or Options.NoteDelayMin;
                        local maxDelay = isHeld and Options.HeldDelayMax or Options.NoteDelayMax;
                        local noteDelay = isHeld and Options.HeldDelay or Options.ReleaseDelay
   
                        if Options.DelayMode.Value == 'Random' then
                            task.wait(arrowLength + rng:NextNumber(minDelay.Value, maxDelay.Value) / 1000)
                        else
                            task.wait(arrowLength + (noteDelay.Value / 1000))
                        end

                        if Options.PressMode.Value == 'Key press' then
                            virtualInputManager:SendKeyEvent(false, keyCode, false, nil)
                        else
                            virtualInputManager:SendKeyEvent(false, keyCode, false, nil)
                        end

                        arrow.Marked = nil;
                    end)
                end
            end
        end
    end)
end

local ActivateUnlockables do
    -- Note: I know you can do this with UserId but it only works if you run it before opening the notes menu
    -- My script should work no matter the order of which you run things :)

    local loadStyle = nil
    local function loadStyleProxy(...)
        -- This forces the styles to reload every time
            
        local upvalues = getupvalues(loadStyle)
        for i, upvalue in next, upvalues do
            if type(upvalue) == 'table' and rawget(upvalue, 'Style') then
                rawset(upvalue, 'Style', nil);
                setupvalue(loadStyle, i, upvalue)
            end
        end

        return loadStyle(...)
    end

    local function applyLoadStyleProxy(...)
        local gc = getgc()
        for i = 1, #gc do
            local obj = gc[i]
            if type(obj) == 'function' then
                -- goodbye nups numeric loop because script-ware is weird
                local upvalues = getupvalues(obj)
                for i, upv in next, upvalues do
                    if type(upv) == 'function' and getinfo(upv).name == 'LoadStyle' then
                        -- ugly but it works, we don't know every name for is_synapse_function and similar
                        if getinfo(obj).source:match('%.ArrowSelector%.Customize$') and getinfo(upv).source:match('%.ArrowSelector%.Customize$') then
                            -- avoid non-game functions :)

                            loadStyle = loadStyle or upv
                            setupvalue(obj, i, loadStyleProxy)

                            table.insert(shared.callbacks, function()
                                assert(pcall(setupvalue, obj, i, loadStyle))
                            end)
                        end
                    end
                end
            end
        end
    end

    local success, error = pcall(applyLoadStyleProxy)
    if not success then
        return fail(string.format('Failed to hook LoadStyle function. Error(%q)\nExecutor(%q)\n', error, executor))
    end

    function ActivateUnlockables()
        local idx = table.find(framework.SongsWhitelist, client.UserId)
        if idx then return end

        UI:Notify('Developer arrows have been unlocked!', 3)
        table.insert(framework.SongsWhitelist, client.UserId)
    end
end

-- UpdateScore hook
do
    local roundManager = nil;
    repeat
        task.wait()
        roundManager = network.Server.RoundManager
    until roundManager;
    local oldUpdateScore = type(roundManager) == 'table' and roundManager.UpdateScore;

    function roundManager.UpdateScore(...)
        local args = { ... }
        local score = args[2]

        if type(score) == 'number' and Options.ScoreModifier then
            if Options.ScoreModifier.Value == 'No decrease on miss' then
                args[2] = 0
            elseif Options.ScoreModifier.Value == 'Increase score on miss' then
                args[2] = math.abs(score)
            end
        end

        return oldUpdateScore(unpack(args))
    end

    table.insert(shared.callbacks, function()
        roundManager.UpdateScore = oldUpdateScore
    end)
end

local SaveManagerr = {} do
    SaveManagerr.Ignore = {}
    SaveManagerr.Parser = {
        Toggle = {
            Save = function(idx, object) 
                return { type = 'Toggle', idx = idx, value = object.Value } 
            end,
            Load = function(idx, data)
                if Toggles[idx] then 
                    Toggles[idx]:SetValue(data.value)
                end
            end,
        },
        Slider = {
            Save = function(idx, object)
                return { type = 'Slider', idx = idx, value = tostring(object.Value) }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValue(data.value)
                end
            end,
        },
        Dropdown = {
            Save = function(idx, object)
                return { type = 'Dropdown', idx = idx, value = object.Value, mutli = object.Multi }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValue(data.value)
                end
            end,
        },
        ColorPicker = {
            Save = function(idx, object)
                return { type = 'ColorPicker', idx = idx, value = object.Value:ToHex() }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValueRGB(Color3.fromHex(data.value))
                end
            end,
        },
        KeyPicker = {
            Save = function(idx, object)
                return { type = 'KeyPicker', idx = idx, mode = object.Mode, key = object.Value }
            end,
            Load = function(idx, data)
                if Options[idx] then 
                    Options[idx]:SetValue({ data.key, data.mode })
                end
            end,
        }
    }

    function SaveManagerr:Save(name)
        local fullPath = 'funky_friday_autoplayer/configs/' .. name .. '.json'

        local data = {
            version = 2,
            objects = {}
        }

        for idx, toggle in next, Toggles do
            if self.Ignore[idx] then continue end
            table.insert(data.objects, self.Parser[toggle.Type].Save(idx, toggle))
        end

        for idx, option in next, Options do
            if not self.Parser[option.Type] then continue end
            if self.Ignore[idx] then continue end

            table.insert(data.objects, self.Parser[option.Type].Save(idx, option))
        end 

        local success, encoded = pcall(httpService.JSONEncode, httpService, data)
        if not success then
            return false, 'failed to encode data'
        end

        writefile(fullPath, encoded)
        return true
    end

    function SaveManagerr:Load(name)
        local file = 'funky_friday_autoplayer/configs/' .. name .. '.json'
        if not isfile(file) then return false, 'invalid file' end

        local success, decoded = pcall(httpService.JSONDecode, httpService, readfile(file))
        if not success then return false, 'decode error' end
        if decoded.version ~= 2 then return false, 'invalid version' end

        for _, option in next, decoded.objects do
            if self.Parser[option.type] then
                self.Parser[option.type].Load(option.idx, option)
            end
        end

        return true
    end

    function SaveManagerr.Refresh()
        local list = listfiles('funky_friday_autoplayer/configs')

        local out = {}
        for i = 1, #list do
            local file = list[i]
            if file:sub(-5) == '.json' then
                -- i hate this but it has to be done ...

                local pos = file:find('.json', 1, true)
                local start = pos

                local char = file:sub(pos, pos)
                while char ~= '/' and char ~= '\\' and char ~= '' do
                    pos = pos - 1
                    char = file:sub(pos, pos)
                end

                if char == '/' or char == '\\' then
                    table.insert(out, file:sub(pos + 1, start - 1))
                end
            end
        end
        
        Options.ConfigList.Values = out;
        Options.ConfigList:SetValues()
        Options.ConfigList:Display()

        return out
    end

    function SaveManagerr:Delete(name)
        local file = 'funky_friday_autoplayer/configs/' .. name .. '.json'
        if not isfile(file) then return false, string.format('Config %q does not exist', name) end

        local succ, err = pcall(delfile, file)
        if not succ then
            return false, string.format('error occured during file deletion: %s', err)
        end

        return true
    end

    function SaveManagerr:SetIgnoreIndexes(list)
        for i = 1, #list do 
            table.insert(self.Ignore, list[i])
        end
    end

    function SaveManagerr.Check()
        local list = listfiles('funky_friday_autoplayer/configs')

        for _, file in next, list do
            if isfolder(file) then continue end

            local data = readfile(file)
            local success, decoded = pcall(httpService.JSONDecode, httpService, data)

            if success and type(decoded) == 'table' and decoded.version ~= 2 then
                pcall(delfile, file)
            end
        end
    end
end

--local Tabss = {}
local Groups = {}

Tabs.Main = Window:AddTab('Auto Player')
--Tabs.Miscellaneous = Window:AddTab('Miscellaneous')

Groups.Autoplayer = Tabs.Main:AddLeftGroupbox('Autoplayer')
    Groups.Autoplayer:AddToggle('Autoplayer', { Text = 'Autoplayer' }):AddKeyPicker('AutoplayerBind', { Default = 'Delete', NoUI = true, SyncToggleState = true })
    Groups.Autoplayer:AddDropdown('PressMode', { Text = 'Key press mode', Default = 'Fire signal', Values = { 'Fire signal', 'Key press' }, Tooltip = 'Set this to "Key press" if the other mode does not work' })

    Groups.Autoplayer:AddDivider()
    Groups.Autoplayer:AddDropdown('AutoplayerMode', { Text = 'Autoplayer mode', Default = 1, Values = { 'Chances', 'Manual' } })
    Groups.Autoplayer:AddDropdown('DelayMode', { Text = 'Delay mode', Default = 1, Values = { 'Manual', 'Random' } })

    Groups.Autoplayer:AddDivider()
    Groups.Autoplayer:AddDropdown('ScoreModifier', { 
        Text = 'Score modifications', 
        Default = 1, 
        Values = { 'Do nothing', 'No decrease on miss', 'Increase score on miss' },
        Tooltip = 'Modifies certain game functions to help you keep your score up!',
    })

Groups.HitChances = Tabs.Main:AddLeftGroupbox('Hit chances')
    Groups.HitChances:AddSlider('SickChance',   { Text = 'Sick chance', Min = 0, Max = 100, Default = 100, Suffix = '%', Rounding = 0 })
    Groups.HitChances:AddSlider('GoodChance',   { Text = 'Good chance', Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0 })
    Groups.HitChances:AddSlider('OkChance',     { Text = 'Ok chance',   Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0 })
    Groups.HitChances:AddSlider('BadChance',    { Text = 'Bad chance',  Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0 })
    Groups.HitChances:AddSlider('MissChance',   { Text = 'Miss chance', Min = 0, Max = 100, Default = 0, Suffix = '%', Rounding = 0 })

Groups.HitTiming = Tabs.Main:AddRightTabbox('Hit timing')
    Groups.ManualTiming = Groups.HitTiming:AddTab('Manual delay')
        Groups.ManualTiming:AddSlider('ReleaseDelay',   { Text = 'Release delay (ms)',  Min = 0,   Max = 500, Default = 20, Rounding = 0 })
        Groups.ManualTiming:AddSlider('HeldDelay',      { Text = 'Held delay (ms)',     Min = -20, Max = 100, Default = 0,  Rounding = 0 })
    
    Groups.RandomTiming = Groups.HitTiming:AddTab('Random delay')
        Groups.RandomTiming:AddSlider('NoteDelayMin',   { Text = 'Minimum note delay (ms)', Min = 0, Max = 500, Default = 0,    Rounding = 0 })
        Groups.RandomTiming:AddSlider('NoteDelayMax',   { Text = 'Maximum note delay (ms)', Min = 0, Max = 100, Default = 20,   Rounding = 0 })

        Groups.RandomTiming:AddSlider('HeldDelayMin',   { Text = 'Minimum held note delay (ms)', Min = 0, Max = 500, Default = 0,   Rounding = 0 })
        Groups.RandomTiming:AddSlider('HeldDelayMax',   { Text = 'Maximum held note delay (ms)', Min = 0, Max = 100, Default = 20,  Rounding = 0 })

Groups.Keybinds = Tabs.Main:AddRightGroupbox('Keybinds')
    Groups.Keybinds:AddLabel('Sick'):AddKeyPicker('SickBind', { Default = 'One', NoUI = true })
    Groups.Keybinds:AddLabel('Good'):AddKeyPicker('GoodBind', { Default = 'Two', NoUI = true })
    Groups.Keybinds:AddLabel('Ok'):AddKeyPicker('OkayBind', { Default = 'Three', NoUI = true })
    Groups.Keybinds:AddLabel('Bad'):AddKeyPicker('BadBind', { Default = 'Four', NoUI = true })

--Groups.Configs = Tabs.Miscellaneous:AddRightGroupbox('Configs')
--Groups.Credits = Tabs.Miscellaneous:AddRightGroupbox('Credits')
--    Groups.Credits:AddLabel('<font color="#3da5ff">wally</font> - script')
--    Groups.Credits:AddLabel('<font color="#de6cff">Sezei</font> - contributor')
--    Groups.Credits:AddLabel('Inori - ui library')
--    Groups.Credits:AddLabel('Jan - old ui library')

--Groups.Unlockables = Tabs.Miscellaneous:AddRightGroupbox('Unlockables')
--    Groups.Unlockables:AddButton('Unlock developer notes', ActivateUnlockables)

--Groups.Misc = Tabs.Miscellaneous:AddRightGroupbox('Miscellaneous')
--    Groups.Misc:AddLabel(metadata.message or 'no message found!', true)

 --   Groups.Misc:AddDivider()
   -- Groups.Misc:AddButton('Unload script', function() pcall(shared._unload) end)
    --Groups.Misc:AddButton('Copy discord', function()
     --   if pcall(setclipboard, "https://wally.cool/discord") then
      --      UI:Notify('Successfully copied discord link to your clipboard!', 5)
       -- end
    --end)

    --Groups.Misc:AddLabel('Menu toggle'):AddKeyPicker('MenuToggle', { Default = 'Delete', NoUI = true })

--    UI.ToggleKeybind = Options.MenuToggle


-- Themes
do
    SaveManager:SetIgnoreIndexes({ 
        "BackgroundColor", "MainColor", "AccentColor", "OutlineColor", "FontColor", -- themes
        "ThemeManager_ThemeList", 'ThemeManager_CustomThemeList', 'ThemeManager_CustomThemeName', -- themes
    })
end

--UI:Notify(string.format('Loaded script in %.4f second(s)!', tick() - start), 3)

task.spawn(function()
    while true do
        wait(0.025)

        -- example for checking if a keybind is being pressed
        --local state = Options.KeyPicker:GetState()
        --if state then
        --    print('KeyPicker is being held down')
        --end
        local tpoints = Options.TogglePoints:GetState()
        if tpoints then
        print('Keybind clicked!', Options.TogglePoints.Value)
        local tpointsDebounce = false
        if tpointsDebounce == false then    
         KeybindToggle = true
         wait(1)
         tpointsDebounce = true
          elseif tpointsDebounce == true then
         tpointsDebounce = false  
         KeybindToggle = false            
        end
        end
            
        local left = Options.LeftKeybind:GetState()
        if left then
        print('Keybind clicked!', Options.LeftKeybind.Value)
        AddPointsFF()
        end

        local down = Options.DownKeybind:GetState()
        if down then
        print('Keybind clicked!', Options.DownKeybind.Value)
        AddPointsFF()
        end

        local up = Options.UpKeybind:GetState()
        if up then
        print('Keybind clicked!', Options.UpKeybind.Value)
        AddPointsFF()
        end

        local right = Options.RightKeybind:GetState()
        if right then
        print('Keybind clicked!', Options.RightKeybind.Value)
        AddPointsFF()
        end

        if Library.Unloaded then break end
    end
end)


 -- Sets keybind to MB2, mode to Hold

-- Library functions
-- Sets the watermark visibility
Library:SetWatermarkVisibility(false)

-- Sets the watermark text
Library:SetWatermark('This is a really long watermark to text the resizing')

Library.KeybindFrame.Visible = true; -- todo: add a function for this

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager. 
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings() 

-- Adds our MenuKeybind to the ignore list 
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

-- use case for doing it this way: 
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('MHUB')
SaveManager:SetFolder('MHUB/config')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config 
-- which has been marked to be one that auto loads!
