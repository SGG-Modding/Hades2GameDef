---@meta game-base
local game = {}

game._VERSION = "Lua 5.2"
---@alias game-base._VERSION ...

game._G = game
---@alias game-base._G ...

game.coroutine = coroutine
---@alias game-base.coroutine ...

game.debug = debug
---@alias game-base.debug ...

game.io = io
---@alias game-base.io ...

game.math = math
---@alias game-base.math ...

game.os = os
---@alias game-base.os ...

game.package = package
---@alias game-base.package ...

game.string = string
---@alias game-base.string ...

game.table = table
---@alias game-base.table ...

game.utf8 = utf8
---@alias game-base.utf8 ...

game.assert = assert
---@alias game-base.assert ...

game.collectgarbage = collectgarbage
---@alias game-base.collectgarbage ...

game.dofile = dofile
---@alias game-base.dofile ...

game.error = error
---@alias game-base.error ...

game.getmetatable = getmetatable
---@alias game-base.getmetatable ...

game.ipairs = ipairs
---@alias game-base.ipairs ...

game.load = load
---@alias game-base.load ...

game.loadfile = loadfile
---@alias game-base.loadfile ...

game.next = next
---@alias game-base.next ...

game.pairs = pairs
---@alias game-base.pairs ...

game.pcall = pcall
---@alias game-base.pcall ...

game.print = print
---@alias game-base.print ...

game.rawequal = rawequal
---@alias game-base.rawequal ...

game.rawget = rawget
---@alias game-base.rawget ...

game.rawlen = rawlen
---@alias game-base.rawlen ...

game.rawset = rawset
---@alias game-base.rawset ...

game.require = require
---@alias game-base.require ...

game.select = select
---@alias game-base.select ...

game.setmetatable = setmetatable
---@alias game-base.setmetatable ...

game.tonumber = tonumber
---@alias game-base.tonumber ...

game.tostring = tostring
---@alias game-base.tostring ...

game.type = type
---@alias game-base.type ...

game.xpcall = xpcall
---@alias game-base.xpcall ...

function game.utf8strlen(...) end
---@alias game-base.utf8strlen ...

function game.debugprint(...) end
---@alias game-base.debugprint ...

function game.random(...) end
---@alias game-base.random ...

function game.randomgaussian(...) end
---@alias game-base.randomgaussian ...

function game.randomint(...) end
---@alias game-base.randomint ...

function game.randomseed(...) end
---@alias game-base.randomseed ...

---TODO: bit32 module docs
---@class game-base*bit32

---@type game-base*bit32
game.bit32 = ...
---@alias game-base.bit32 ...

---TODO: memory module docs
---@class game-base*memory

---@type game-base*memory
game.memory = ...
---@alias game-base.memory ...

---@alias game-base*luabins-valid nil|boolean|number|string|table

---@class game-base*luabins
---@field public save fun(...: game-base*luabins-valid): binary: string?, error: string?
---@field public load fun(binary: string): status: true|nil, result_or_error: game-base*luabins-valid?, ...: game-base*luabins-valid

---@type game-base*luabins
game.luabins = ...
---@alias game-base.luabins ...

---@param ... game-base*luabins-valid
---@return string? result
---@return string? error
function game.luabins.save(...) end

---@param binary string
---@return true? status
---@return game-base*luabins-valid? result_or_error
---@return game-base*luabins-valid ...
function game.luabins.load(binary) end

return game