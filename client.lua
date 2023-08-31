-- Make sure no other anti cheat script is currently checking for spectate as it can cause false positves
-- As it sets the player to spectate himself for a couple seconds, you can just adjust it if you like

CreateThread(function()
    while true do
        Wait(5000) -- Amount of miliseconds before each check
        Citizen.InvokeNative(0x423DE3854BB50894, true, GetPlayerPed(-1))
        Wait(100)
        local cur_spec = Citizen.InvokeNative(0x048746E388762E11)
        Wait(100)
        if not cur_spec then
            -- Disconnect the player here
            TriggerServerEvent("hv:disconnect:Player")
        end
        Citizen.InvokeNative(0x423DE3854BB50894, false, GetPlayerPed(-1))
    end
end)