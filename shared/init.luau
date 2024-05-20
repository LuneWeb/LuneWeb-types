--- This class implements __eq, so you can compare it to other WindowIds
export type WindowId = {}

export type Window = {
	id: WindowId,
	closed: boolean,

	close: (self: Window) -> (),
	open: (self: Window) -> (),
}

export type Event = "CloseRequested" | "RedrawRequested"

export type Connection = {
	connected: boolean,

	--- Amount of internal listeners to the connection from luneweb
	listeners: number,

	--- Disconnect all connections
	disconnect: (self: Connection) -> (),
}

return nil
