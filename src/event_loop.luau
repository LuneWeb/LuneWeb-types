local types = require("../shared")
export type Event = types.Event
export type Connection = types.Connection

local event_loop = {}

function event_loop.new()
	return nil :: any
end

function event_loop.subscribe(window_id: types.WindowId, handler: (event: Event?) -> ()): types.Connection
	return nil :: any
end

return event_loop
