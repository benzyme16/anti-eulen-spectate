-- discord.gg/halavista

RegisterServerEvent("hv:disconnect:Player")
AddEventHandler("hv:disconnect:Player", function()
    local src = source
    DropPlayer(src, "[HV]: Eulen Spectate Detected!")
end)