RegisterCommand("kv3", function()
    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
	local heading = GetEntityHeading(GetPlayerPed(-1))
    local coord = "vector3("..round(x,2)..", "..round(y,2)..", "..round(z,2)..") Heading : "..round(heading,2)
    TriggerServerEvent("kaves_coords:SendCoords", coord)
end)


function round(num, numDecimalPlaces)
	local mult = 5^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end