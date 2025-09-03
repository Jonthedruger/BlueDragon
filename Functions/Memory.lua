local Memory = {}

Memory.BYTE          = gg.TYPE_BYTE
Memory.WORD          = gg.TYPE_WORD
Memory.DWORD         = gg.TYPE_DWORD
Memory.QWORD         = gg.TYPE_QWORD
Memory.FLOAT         = gg.TYPE_FLOAT
Memory.DOUBLE        = gg.TYPE_DOUBLE
Memory.SIGNED_BYTE   = gg.TYPE_SIGNED_BYTE
Memory.SIGNED_WORD   = gg.TYPE_SIGNED_WORD
Memory.SIGNED_DWORD  = gg.TYPE_SIGNED_DWORD
Memory.SIGNED_QWORD  = gg.TYPE_SIGNED_QWORD
Memory.EQUAL         = gg.SIGN_EQUAL
Memory.AUTO          = gg.TYPE_AUTO

gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)

function Memory.Search(value, type)
    gg.searchNumber(value, type or Memory.AUTO, false, Memory.EQUAL, 0, -1)
end

function Memory.GetResults(count)
    return gg.getResults(count or 100)
end

function Memory.Clear()
    gg.clearResults()
    gg.setVisible(false)
end

function Memory.Edit(value, type)
    local results = Memory.GetResults()
    gg.editAll(value, type or Memory.BYTE)
    Memory.Clear()
end

return Memory
