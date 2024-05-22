local types = require("../shared")
export type Connection = types.Connection

local http_types = require("../shared/http")
export type ServeHttpHandler = http_types.ServeHttpHandler

export type WebView = {
	evaluate_script_with_response: (self: WebView, script: string) -> unknown,
	evaluate_script: (self: WebView, script: string) -> (),
	subscribe: (self: WebView, channel: string, callback: (value: unknown) -> ()) -> Connection,
}

export type WebViewBuilder = {
	with_url: (self: WebViewBuilder, url: string) -> (),
	with_html: (self: WebViewBuilder, html: string) -> (),
	with_initialization_script: (self: WebViewBuilder, script: string) -> (),
	with_custom_protocol: (self: WebViewBuilder, name: string, handler: ServeHttpHandler) -> Connection,
	build: (self: WebViewBuilder, window: types.Window) -> WebView,
}

local webview = {}

function webview.new(): WebViewBuilder
	return nil :: any
end

return webview
