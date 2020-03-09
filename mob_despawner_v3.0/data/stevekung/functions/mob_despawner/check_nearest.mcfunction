summon falling_block ~ ~0.2 ~ {BlockState:{Name:"bedrock"},Time:400,NoGravity:1b,Glowing:1b,DropItem:0b,Tags:["despawner_check"]}
execute if entity @s[tag=mob_despawner] run execute as @e[type=falling_block,tag=despawner_check,limit=1,distance=..2] run team join MobDespawner @s
execute if entity @s[tag=mini_mob_despawner] run execute as @e[type=falling_block,tag=despawner_check,limit=1,distance=..2] run team join MiniMobDespawner @s
execute if entity @s[tag=mob_despawner] run execute as @a[scores={despawner.trigg=128}] run tellraw @s [{"text":"Nearest Mob Despawner at ","color":"green"}]
execute if entity @s[tag=mini_mob_despawner] run execute as @a[scores={despawner.trigg=128}] run tellraw @s [{"text":"Nearest Mini Mob Despawner at ","color":"green"}]
execute as @a[scores={despawner.trigg=128}] run tellraw @s [{"text":"X: ","color":"yellow"},{"score":{"name":"@e[type=area_effect_cloud,tag=mob_despawner_base,distance=..64,limit=1,sort=nearest]","objective":"despawner.x"},"color":"yellow"},{"text":", Y: ","color":"yellow"},{"score":{"name":"@e[type=area_effect_cloud,tag=mob_despawner_base,distance=..64,limit=1,sort=nearest]","objective":"despawner.y"},"color":"yellow"},{"text":", Z: ","color":"yellow"},{"score":{"name":"@e[type=area_effect_cloud,tag=mob_despawner_base,distance=..64,limit=1,sort=nearest]","objective":"despawner.z"},"color":"yellow"}]
scoreboard players set @s despawner.gticks 200