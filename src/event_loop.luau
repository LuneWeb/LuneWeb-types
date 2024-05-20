local types = require("../shared")

export type Event = types.Event
export type Connection = types.Connection

local event_loop = {}

--[=[
	Make sure to call this after having atleast one subscriber

	# Example

	```lua
	local event_loop = require("@luneweb/event_loop")
	local subscriber

	subscriber = event_loop.subscribe(window.id, function(event)
		if event == "CloseRequested" then
			window:close()
			subscriber:disconnect()
		end
	end)

	event_loop.new()
	```
]=]
function event_loop.new()
	return nil :: any
end

function event_loop.subscribe(window_id: types.WindowId, handler: (event: Event?) -> ()): types.Connection
	return nil :: any
end

return event_loop
