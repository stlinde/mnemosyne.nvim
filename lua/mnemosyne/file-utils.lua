local M = {}

function M.create_file_prompt(directory, file_type)
	local fn = function()
		vim.ui.input({
			prompt = "Title: ",
		}, function(input)
			local title = string.gsub(string.lower(input), " ", "-")
			vim.cmd(":e " .. directory .. os.date("%Y%m%d%H%M--") .. title .. "." .. file_type)
		end)
	end
	return fn
end

return M
