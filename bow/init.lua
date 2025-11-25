local function get_yaw(player)
    return player:get_look_horizontal()
end

local function get_pitch(player)
    return player:get_look_pitch()
end

core.register_craftitem("bow:bow", {
    description = "Bow",
    inventory_image = "bow_standby.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        core.chat_send_player(user:get_player_name(), "Yaw : "..get_yaw(user))
        core.chat_send_player(user:get_player_name(), "Pitch : "..get_pitch(user))
    end
})

--[[
local color = {
    "white",
    "red",
    "yellow",
}
]]

core.register_craftitem("bow:arrow", {
    description = "Arrow",
    inventory_image = "arrow.png",
    stack_max = 1,
    on_use = function(itemstack, user, pointed_thing)
        -- code here
    end
})

-- Arrow entity

core.register_entity("bow:arrow", {
    initial_properties = {
        pointable = false,
        visual = "upright_sprite",
        textures = {"bow_arrow.png"}
    },
    on_activate = function(self, staticdata, dtime_s)
        core.chat_send_all("staticdata's table : "..dump(staticdata))
    end,
    on_step = function(self, dtime, moveresult)
        core.chat_send_all("self's table : "..dump(self))
    end,
    on_punch = function(self, puncher, time_from_last_punch, tool_capabilities, dir, damage) end
})