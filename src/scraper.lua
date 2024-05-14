---@meta _
---@diagnostic disable

--[[
	  Swap this with main.lua to scrape data from the game as it runs
--]]

local function is_C(f)
	if type(f) ~= 'function' then return false end
	local info = debug.getinfo(f,'S')
	return info.what == 'C'
end

local function is_base(k)
	if type(k) ~= 'string' then return false end
	return k:match('^[a-z][%da-z]+$')
end

local function is_field(k)
	if type(k) ~= 'string' then return false end
	return k:match('^[%w_][%d%w_]+$')
end

local function get_args(f)
	if type(f) ~= 'function' or is_C(f) then return '' end
	local info = debug.getinfo(f,'u')
	local args = {}
	if info.nparams then
		for i = 1, info.nparams do
			table.insert(args,string.char(96+i))
		end
	end
	if info.isvararg then
		table.insert(args,'...')
	end
	return table.concat(args,', ')
end

local plugin = 'SGG_Modding-Hades2GameDef-'

local base = {}
local engine = {}

local prefix = plugin .. 'Scripts-'
local scripts = {}

local early = {}
for k,v in pairs(_G) do
	early[k] = v
	if is_base(k) then
		base[k] = v
	else
		engine[k] = v
	end
end

local folder = _PLUGIN.plugins_mod_folder_path
rom.path.create_directory(folder .. '/Scripts')

local function populate_file(file,meta,defs)
	file:write('---@meta ' .. meta .. '\n')
	file:write('local game = {}\n\n')
	for k,v in pairs(defs) do
		if is_field(k) and (type(v) == 'thread' or type(v) == 'userdata') then
			file:write('---@type ' .. type(v) .. '\n')
			file:write('game.' .. k .. ' = ...\n')
			file:write('---@alias ' .. meta .. '.' .. k .. ' ...\n\n')
		end
	end
	for k,v in pairs(defs) do
		if is_field(k) and type(v) == 'number' then
			file:write('game.' .. k .. ' = ' .. tostring(v) .. '\n')
			file:write('---@alias ' .. meta .. '.' .. k .. ' ...\n\n')
		end
	end
	for k,v in pairs(defs) do
		if is_field(k) and type(v) == 'string' then
			file:write('game.' .. k .. ' = "' .. v .. '"\n')
			file:write('---@alias ' .. meta .. '.' .. k .. ' ...\n\n')
		end
	end
	for k,v in pairs(defs) do
		if is_field(k) and type(v) == 'table' then
			file:write('---@class ' .. meta .. '*' .. k .. '\n\n')
			file:write('---@type ' .. meta .. '*' .. k .. '\n')
			file:write('game.' .. k .. ' = {}\n')
			file:write('---@alias ' .. meta .. '.' .. k .. ' ...\n\n')
		end
	end
	for k,v in pairs(defs) do
		if is_field(k) and type(v) == 'function' then
			file:write('function game.' .. k .. '(' .. get_args(v) .. ') end\n')
			file:write('---@alias ' .. meta .. '.' .. k .. ' ...\n\n')
		end
	end
	file:write('return game')
end

local file = io.open(folder .. '/base.lua','w')
local meta = plugin .. 'Base'
populate_file(file,meta,base)
file:close()

local file = io.open(folder .. '/engine.lua','w')
local meta = plugin .. 'Engine'
populate_file(file,meta,engine)
file:close()

local first = true

(rom.game or _G)['OnAnyLoad']{ function() 
	if first then
		local defs = {}
		for k,v in pairs(_G) do
			if not early[k] then
				defs[k] = v
			end
			early[k] = v
		end
		first = false
		local meta = prefix .. 'Load'
		local file = io.open(folder .. '/load.lua','w')
		populate_file(file,meta,defs)
		file:close()
	end
end }

rom.on_import.post(function(name)
	if not scripts[name] then
		local defs = {}
		scripts[name] = defs
		for k,v in pairs(_G) do
			if not early[k] then
				defs[k] = v
			end
			early[k] = v
		end
		local stem = name:sub(1,#name-4)
		local meta = prefix .. stem
		local file = io.open(folder .. '/Scripts/' .. name,'w')
		populate_file(file,meta,defs)
		file:close()
	end
end)