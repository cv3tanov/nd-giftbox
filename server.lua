NDCore = exports['nd-core']:GetCoreObject()

NDCore.Functions.CreateUseableItem("gift_box", function(source, item)
    local Player = NDCore.Functions.GetPlayer(source)
    TriggerClientEvent("nd-giftbox:GiftBox", source, item.name)
end)