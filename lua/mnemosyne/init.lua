-- Import the plugin's additional Lua modules
local file_utils = require("mnemosyne.file-utils")

-- Create an object for the module. All of the module's
-- functions are associated with this object, which is
-- returned when the module is called with `require`.
local M = {}

-- Route calls made to this module to functions in the
-- plugin's other modules
M.create_file_prompt = file_utils.create_file_prompt

return M
