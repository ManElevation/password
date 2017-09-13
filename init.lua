--password
minetest.register_privilege("mpassword", {description = "Password Priv.", give_to_singleplayer = true})
--password
minetest.register_on_joinplayer(function(player)
      local player_name = player:get_player_name()
      local privs = minetest.get_player_privs(player_name)
      if not privs['mpassword'] == true then
       minetest.kick_player(player_name, "Ey, Your not a allowed player. ask for permission on forum.")
        minetest.chat_send_all(player_name .. " kicked for joining with out permission.")
      end
end)