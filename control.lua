require("util")

function on_player_selected_area(event, do_destroy)
	local player = game.players[event.player_index]
	local item = event.item
	local entities = event.entities
	local count = 0
	if item == "tree-eraser-maintained" then
		local destroyed_entities = {}
		for _,entity in ipairs(entities) do
			if entity.type == "tree" then
				count = count + 1
				if do_destroy then
					entity.destroy()
				end
			end
		end
		local args = {""}
		local text = ""
		if #args == 1 then
			if do_destroy then
				text = "Trees removed: "
			else
				text = "Trees: "
			end
		else
			text = text .. ", "
		end
		table.insert(args, text .. count .. " ")
		if #args > 1 then
			player.print(args)
		end
	end
end
	
script.on_event(defines.events.on_player_selected_area, function(event)
		on_player_selected_area(event, true)
	end)

script.on_event(defines.events.on_player_alt_selected_area, function(event)
		on_player_selected_area(event, false)
	end)

script.on_event(defines.events.on_player_dropped_item, function(event)
		if event.entity ~= nil then
			if event.entity.stack ~= nil then
				if event.entity.stack.name == "tree-eraser-maintained" then
					event.entity.stack.clear()
				end
			end
		end
	end)
