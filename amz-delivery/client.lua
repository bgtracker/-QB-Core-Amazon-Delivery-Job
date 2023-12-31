local QBCore = exports['qb-core']:GetCoreObject()

-- Eventos

RegisterNetEvent('amz-delivery:client:PedirEntrega', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"argue"})
    QBCore.Functions.Progressbar('falar_empregada', 'Talking to Amazon staff...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    QBCore.Functions.Notify('Request received! <br> Wait outside to have your packages ready!', 'primary', 7500)
    
    Wait(Config.DeliveryWait)

    QBCore.Functions.Notify('You received the packages. GPS coordinates to an Amazon locker have been set. Grab an Amazon van and get going!' , 'primary', 7500)
    TriggerServerEvent('amz-delivery:server:AdicionarItem')
    ExportDeliveryTarget()
    end)
end)

RegisterNetEvent('amz-delivery:client:BaterPorta', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"knock"})
    QBCore.Functions.Progressbar('falar_empregada', 'Delivering to locker...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    QBCore.Functions.Notify('You delivered the packages to the locker, go back to the depot to receive payment.', 'primary', 7500)

    TriggerServerEvent('amz-delivery:server:EntregarCaixa')
    end)
end)

RegisterNetEvent('amz-delivery:client:ReceberPagamento', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('falar_empregada', 'Collecting payment...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()

        TriggerServerEvent('amz-delivery:server:ReceberPagamento')
    end)
end)

-- Funções

function ExportDeliveryTarget()
    local prob = math.random(1, 6)

    if prob == 1 then
        SetNewWaypoint(Config.DeliveryLoc1)
        ExportDeliveryTarget1()
    elseif prob == 2 then
        SetNewWaypoint(Config.DeliveryLoc2)
        ExportDeliveryTarget2()
    elseif prob == 3 then
        SetNewWaypoint(Config.DeliveryLoc3)
        ExportDeliveryTarget3()
    elseif prob == 4 then
        SetNewWaypoint(Config.DeliveryLoc4)
        ExportDeliveryTarget4()
    elseif prob == 5 then
        SetNewWaypoint(Config.DeliveryLoc5)
        ExportDeliveryTarget5()
    elseif prob == 6 then
        SetNewWaypoint(Config.DeliveryLoc6)
        ExportDeliveryTarget6()
    end
end

function ExportDeliveryTarget1()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc1, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "amz-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Deliver to locker",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget2()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc2, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "amz-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Deliver to locker",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget3()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc3, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "amz-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Deliver to locker",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget4()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc4, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "amz-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Deliver to locker",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget5()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc5, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "amz-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Deliver to locker",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end

function ExportDeliveryTarget6()
    exports['qb-target']:AddBoxZone("delivery_box", Config.DeliveryLoc6, 1, 1, {
        name="delivery_box",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "amz-delivery:client:BaterPorta",
            icon = "far fa-box",
            label = "Deliver to locker",
            item = "delivery_box",
            },
        },
        distance = 2.5
    })
end
