local Repo    = 'https://raw.githubusercontent.com/Jonthedruger/BlueDragon'
local Main    = Repo .. 'refs/heads/main/'
local Memory  = load(gg.makeRequest(Main .. 'Functions/Memory.lua'))
local Values  = load(gg.makeRequest(Main .. 'Modules/Values.lua'))
local Version = load(gg.makeRequest(Main .. 'Modules/Version'))

local function Menu()
  local Menu = {
    'Sniper Aimbot';
    'Fast Switch';
    'Antenna';
  }
  local Args = gg.multiChoice(Menu, nil, [==[
    - Information
    This script was maded by liebertsx. Thanks for using my script
 
    Discord: @liebertsx
    Telegram: @liebertsx
  ]==])
  if not Args then return end -- this shi lame
  if Args[1] then
    Memory.Search(Values['Sniper Aimbot'].S, FLOAT)
    Memory.Edit(Values['Sniper Aimbot'].R, BYTE)
  elseif Args[2] then
    Memory.Search(Values['Fast Switch'].S, BYTE)
    Memory.Edit(Values['Fast Switch'].R, BYTE)
    Memory.Search(Values['Fast Switch'].S2, BYTE)
    Memory.Edit(Values['Fast Switch'].R2, BYTE)
  elseif Args[3] then
    Memory.Search(Values.Antenna.S, FLOAT)
    Memory.Edit(Values.Atenna.R, FLOAT)
  end
end

while true do
  gg.sleep(100)
  if gg.isVisible() then
    gg.setVisible(false)
    Menu()
  end
end
