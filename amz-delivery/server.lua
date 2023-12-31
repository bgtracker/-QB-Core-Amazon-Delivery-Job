local QBCore = exports['qb-core']:GetCoreObject()

--- Eventos

RegisterNetEvent('amz-delivery:server:AdicionarItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'delivery_box'
    local quantity = 1

    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('amz-delivery:server:EntregarCaixa', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item1 = 'delivery_box'
    local item2 = 'delivery_recive'
    local quantity = 1

    Player.Functions.RemoveItem(item1, quantity)
    Player.Functions.AddItem(item2, quantity)
end)

RegisterNetEvent('amz-delivery:server:ReceberPagamento', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local payment = Config.DeliveryPayment

    Player.Functions.RemoveItem('delivery_recive', 1)
    Player.Functions.AddMoney('cash', payment)
end)