local types = require("../shared")
export type WindowId = types.WindowId
export type Window = types.Window

local window = {}

function window.new(): Window
	return nil :: any
end

return window
