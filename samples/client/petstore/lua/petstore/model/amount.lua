--[[
  Swagger Petstore
 
  This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
 
  OpenAPI spec version: 1.0.0
  Contact: apiteam@swagger.io
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- amount class
local amount = {}
local amount_mt = {
	__name = "amount";
	__index = amount;
}

local function cast_amount(t)
	return setmetatable(t, amount_mt)
end

local function new_amount(value, currency)
	return cast_amount({
		["value"] = value;
		["currency"] = currency;
	})
end

return {
	cast = cast_amount;
	new = new_amount;
}