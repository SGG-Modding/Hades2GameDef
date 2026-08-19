---@meta game-rom
local game = {}

---TODO: ReturnOfModding / Hell2Modding docs
---@class game-rom*rom
---@field [any] any

---@type game-rom*rom
game.rom = ...
---@alias game-rom.rom ...

function game._rom_open_debug(...) end
---@alias game-rom._rom_open_debug ...

function game._rom_print_raw(...) end
---@alias game-rom._rom_print_raw ...

function game._rom_tostring(...) end
---@alias game-rom._rom_tostring ...

return game