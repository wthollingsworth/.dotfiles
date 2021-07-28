local modules = {
	'options',
	'mappings',
	'plugins'
}

for i = 1, #modules, 1 do
	pcall(require, modules[i])
end

function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, {...})
    print(unpack(objects))
    return ...
end
