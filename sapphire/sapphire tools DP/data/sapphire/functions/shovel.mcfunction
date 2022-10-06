recipe take @s sapphire:shovel
advancement revoke @s only sapphire:shovel
clear @s minecraft:knowledge_book 1
give @s minecraft:netherite_shovel{CustomModelData:1, HideFlags:4, Unbreakable:true, display:{Name:'{"text":"사파이어 삽", "italic":False}'}, AttributeModifiers: [{AttributeName: "generic.movement_speed", Name: "generic.movement_speed", Slot: "mainhand", Amount: 0.3, Operation: 0, UUID: [I;1, 1, 1, 1]}]} 1