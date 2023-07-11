local api = vim.api

-- Function to execute shell command and capture output
local function execute_command(command)
	local handle = io.popen(command)
	local result = handle:read("*a")
	handle:close()
	return result
end

-- Function to create an empty buffer in a new tab
local function create_empty_buffer()
	api.nvim_command("tabnew")
	api.nvim_command("enew")
	api.nvim_buf_set_option(0, "buftype", "")
	api.nvim_buf_set_option(0, "bufhidden", "wipe")
end

-- Function to display the response in a new tab
local function display_response(response)
	create_empty_buffer()
	api.nvim_buf_set_lines(0, 0, -1, false, response)
	api.nvim_buf_set_option(0, "filetype", "json")
end

-- Function to process the user input and make the HTTP request
local function process_prompt(prompt)
	-- Replace any single quotes with escaped single quotes to prevent issues in the shell command
	prompt = string.gsub(prompt, "'", "'\\''")

	-- Call the function that returns the HTTP method, host, and payload
	local result = my_http_function(prompt)

	-- Construct the curl command
	local curl_command = string.format("curl -X %s -H 'Content-Type: application/json' -d '%s' %s",
		result.http_method, result.payload, result.http_host)

	-- Execute the curl command and capture the response
	local response = execute_command(curl_command)

	-- Decode the response if it's in JSON format, otherwise print error
	local success, decoded_response = pcall(vim.fn.json_decode, response)
	if success then
		display_response(vim.fn.json_encode(decoded_response))
	else
		print("Error: Unable to decode response.")
		print(response)
	end
end

-- Register the command :Ask
api.nvim_command("command! -nargs=1 Ask lua process_prompt(<f-args>)")
