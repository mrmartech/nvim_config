require("hawaii.set")
require("hawaii.remap")
require("hawaii.packer")

-- Load telescope config only if telescope is available
local status_ok, telescope = pcall(require, "telescope")
if status_ok then
  require("hawaii.telescope")
end