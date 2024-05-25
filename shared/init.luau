export type WindowId = {}

export type Window = {
	id: WindowId,
	closed: boolean,

	close: (self: Window) -> (),
	open: (self: Window) -> (),
}

export type Event = "CloseRequested"

export type Connection = {
	connected: boolean,
	listeners: number,
	disconnect: (self: Connection) -> (),
}

return nil
