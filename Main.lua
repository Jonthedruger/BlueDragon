local Repo = 'https://raw.githubusercontent.com/Jonthedruger/BlueDragon'
local Main = Repo .. '/main/'
local Memory = load(gg.makeRequest(Main .. 'Functions/Memory.lua').content)()
local Values = load(gg.makeRequest(Main .. 'Modules/Values.lua').content)()
local Version = load(gg.makeRequest(Main .. 'Modules/Version.lua').content)()

local function Menu()
    local Menu = {
        'Sniper Aimbot',
        'Fast Switch', 
        'Antenna'
    }
    
    local Args = gg.multiChoice(Menu, nil, [==[
- Information
This script was made by liebertsx. Thanks for using my script

Discord: @liebertsx  
Telegram: @liebertsx
]==])
    
    if not Args then return end
    if Args[1] then
        Memory.Search(Values['Sniper Aimbot'].S, Memory.Float)
        Memory.Edit(Values['Sniper Aimbot'].R, Memory.Byte)
    elseif Args[2] then
        Memory.Search(Values['Fast Switch'].S, Memory.BYTE)
        Memory.Edit(Values['Fast Switch'].R, Memory.Byte)
        Memory.Search(Values['Fast Switch'].S2, Memory.Byte)
        Memory.Edit(Values['Fast Switch'].R2, Memory.Byte)
    elseif Args[3] then
        Memory.Search(Values.Antenna.S, Memory.Float)
        Memory.Search(0, Memory.Float)
        for i,v in ipairs(Results) do
            v.value = Values.Antenna.R
            v.freeze = true
        end
        gg.setValues(Results)
        Memory.Edit(Values.Antenna.R, Memory.Float)
    end
end

while true do
    gg.sleep(100)
    if gg.isVisible() then
        gg.setVisible(false)
        Menu()
    end
end
