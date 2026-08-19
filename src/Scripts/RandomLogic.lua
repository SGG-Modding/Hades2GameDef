---@meta game-Scripts-RandomLogic
local game = {}

---@class game-Scripts-RandomLogic*NextSeeds
---@field [any] any

---@type game-Scripts-RandomLogic*NextSeeds
game.NextSeeds = ...
---@alias game-Scripts-RandomLogic.NextSeeds ...

function game.CoinFlip(a) end
---@alias game-Scripts-RandomLogic.CoinFlip ...

function game.GetClockSeed() end
---@alias game-Scripts-RandomLogic.GetClockSeed ...

function game.GetGlobalRng() end
---@alias game-Scripts-RandomLogic.GetGlobalRng ...

function game.RandomChance(a, b) end
---@alias game-Scripts-RandomLogic.RandomChance ...

function game.RandomFloat(a, b, c) end
---@alias game-Scripts-RandomLogic.RandomFloat ...

function game.RandomInit(a) end
---@alias game-Scripts-RandomLogic.RandomInit ...

function game.RandomInt(a, b, c) end
---@alias game-Scripts-RandomLogic.RandomInt ...

function game.RandomNormal(a, b, c) end
---@alias game-Scripts-RandomLogic.RandomNormal ...

function game.RandomNumber(a, b) end
---@alias game-Scripts-RandomLogic.RandomNumber ...

function game.RandomSetNextInitSeed(a) end
---@alias game-Scripts-RandomLogic.RandomSetNextInitSeed ...

function game.RandomSynchronize(a, b) end
---@alias game-Scripts-RandomLogic.RandomSynchronize ...

return game