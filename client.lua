NDCore = exports['nd-core']:GetCoreObject()

RegisterNetEvent("nd-giftbox:GiftBox", function()
    NDCore.Functions.Progressbar("pickup", "Отваряне на подарък...", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    })
        local random = math.random(1,10)
        --remove box
        TriggerServerEvent('NDCore:Server:RemoveItem', "gift_box", 1)
        --add items from box
        TriggerServerEvent('NDCore:Server:AddItem', "lockpick", 1)
        TriggerServerEvent('NDCore:Server:AddItem', "sandwich", 5)
        TriggerServerEvent('NDCore:Server:AddItem', "water_bottle", 5)
                    TriggerEvent("inventory:client:ItemBox", NDCore.Shared.Items["lockpick"], "add")
                    TriggerEvent("inventory:client:ItemBox", NDCore.Shared.Items["sandwich"], "add")
                    TriggerEvent("inventory:client:ItemBox", NDCore.Shared.Items["water_bottle"], "add")

        if random < 4 then
            NDCore.Functions.Notify("За без пари толкова..", "error")
        elseif random == 4 then
            TriggerServerEvent('NDCore:Server:AddItem', "advancedlockpick", 1)
			TriggerServerEvent('NDCore:Server:AddItem', "surgerypass", 1)
                    TriggerEvent("inventory:client:ItemBox", NDCore.Shared.Items["advancedlockpick"], "add")
					TriggerEvent("inventory:client:ItemBox", NDCore.Shared.Items["surgerypass"], "add")
        elseif random < 10 and random > 4 then
            NDCore.Functions.Notify("За без пари толкова..", "error")
        elseif random == 10 then
            TriggerServerEvent('NDCore:Server:AddItem', "screwdriverset", 1)
                    TriggerEvent("inventory:client:ItemBox", NDCore.Shared.Items["screwdriverset"], "add")
        else
             NDCore.Functions.Notify("За без пари толкова..", "error")
        end
end)