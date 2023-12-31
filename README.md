# Amazon Delivery Job

# Installation

### Copy the AmazonWarehouse and AmazonHubsUK maps to your resources folder

add to your server.cfg(optional if you are already loading pre-defined folders for maps, modules etc.):
```
ensure AmazonHubsUK
ensure AmazonWarehouse
```

#

Open qb-core/shared/items.lua

Add the items below:

```
	--amz-delivery
	["delivery_box"]     = {["name"] = "delivery_box", 				    ["label"] = "Delivery Box", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "delivery_box.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["delivery_recive"]     = {["name"] = "delivery_recive", 				    ["label"] = "Delivery Recive", 					["weight"] = 0, 		["type"] = "item", 			["image"] = "delivery_recive.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

```

Open qb-target/init.lua:

Add to Config.Peds:
```
    { --Amazon Delivey Ped
	        model = 's_m_m_postal_01',
	        coords = vector4(-428.63, 6163.01, 31.48, 45.16),
	        gender = 'male',
	        freeze = true,
	        invincible = true,
	        blockevents = true,
    },
```

Add to Config.TargetModels:
```
    ["deliveryped"] = {
        models = {
            "s_m_m_postal_01",
        },
        options = {
            {
                type = "client",
                event = "mt-delivery:client:PedirEntrega",
                icon = "fas fa-taco", 
                label = "Request packages",
            },
            {
                type = "client",
                event = "mt-delivery:client:ReceberPagamento",
                icon = "fas fa-dolar", 
                label = "Collect payment",
                item = "delivery_recive",
            }
        },
        distance = 2.5,
    },
