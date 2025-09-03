BYTE          = gg.TYPE_BYTE        -- 1 byte integer
WORD          = gg.TYPE_WORD        -- 2 byte integer
DWORD         = gg.TYPE_DWORD       -- 4 byte integer
QWORD         = gg.TYPE_QWORD       -- 8 byte integer
FLOAT         = gg.TYPE_FLOAT       -- 4 byte float
DOUBLE        = gg.TYPE_DOUBLE      -- 8 byte double
SIGNED_BYTE   = gg.TYPE_SIGNED_BYTE   -- signed 1 byte
SIGNED_WORD   = gg.TYPE_SIGNED_WORD   -- signed 2 byte
SIGNED_DWORD  = gg.TYPE_SIGNED_DWORD  -- signed 4 byte
SIGNED_QWORD  = gg.TYPE_SIGNED_QWORD  -- signed 8 byte
EQUAL         = gg.SIGN_EQUAL         -- equal
AUTO          = gg.TYPE_AUTO        -- auto

function Search(...)
  local Args = {...}
  gg.searchNumber(Args[1], Args[2] or AUTO, false, EQUAL, 0, -1)
  return true -- ts was NOT necessary twin
end

function GetResult(Value)
    gg.getResults(Value)
  return true
end

function Edit(...)
  local Args = {...}
  gg.editAll(Args[1], Args[2] or BYTE)
  return true
end

function Clear()
  gg.clearResults()
  gg.setVisible(false)
end
