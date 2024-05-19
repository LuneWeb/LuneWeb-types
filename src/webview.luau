local types = require("../shared")
export type Connection = types.Connection

export type WebView = {
	--[=[
		@deprecated This method is rotten from the root, it has many issues which we cannot fix, use [ipc_handler] for communication instead

		@yields This method yields until the webview runs the script and returns its last expression

		## Caution
		Make sure to run this after having a running event loop for your window, or else it will yield forever causing your whole application to crash

		There are lots of unsolved issues with this method, and we can not fix them

		## Example
		```lua
		local last_statement = webview:evaluate_script_with_response("console.log('Hello, World!'); 50 + 50")
		print(last_statement, typeof(last_statement)) -- 100 number
		```

		## Fun fact(s)
		- evaluate_script automatically turns the last statement in the javascript code into a lua value
	]=]
	evaluate_script_with_response: (self: WebView, script: string) -> unknown,

	--[=[
		## Caution
		Make sure to run this after having a running event loop for your window, or else it will yield forever causing your whole application to crash

		## Example
		```lua
		webview:evaluate_script([[
		console.log('Hello, World!')
		window.luneweb.postMessage('channel1', 100 + 100)
		]])
		```
	]=]
	evaluate_script: (self: WebView, script: string) -> (),

	subscribe: (self: WebView, channel: string, callback: (value: unknown) -> ()) -> Connection,
}

export type WebViewBuilder = {
	with_url: (self: WebViewBuilder, url: string) -> (),
	with_initialization_script: (self: WebViewBuilder, script: string) -> (),

	build: (self: WebViewBuilder, window: types.Window) -> WebView,
}

local webview = {}

function webview.new(): WebViewBuilder
	return nil :: any
end

return webview
