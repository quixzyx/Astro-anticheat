execute @s[tag=stafftag] ~~~ scoreboard players add icmtoggledummy ICM 1
execute @s[tag=stafftag] ~~~ scoreboard players operation @a ICM = icmtoggledummy ICM

#turn on
execute @s[tag=stafftag,scores={ICM=1}] ~~~ scoreboard players set icmtoggledummy icmtoggle 1
execute @s[tag=stafftag,scores={ICM=1}] ~~~ scoreboard players operation @a icmtoggle = icmtoggledummy icmtoggle
execute @s[tag=stafftag,scores={ICM=1}] ~~~ tellraw @a[tag=stafftag] {"rawtext":[{"text":"§¶§cAstro §¶§b→ §6Item Commands §bhas been toggled §2ON §bby §d"},{"selector":"@s"}]}
#turn off
execute @s[tag=stafftag,scores={ICM=2}] ~~~ scoreboard players set icmtoggledummy icmtoggle 0
execute @s[tag=stafftag,scores={ICM=2}] ~~~ scoreboard players operation @a icmtoggle = icmtoggledummy icmtoggle
execute @s[tag=stafftag,scores={ICM=2}] ~~~ tellraw @a[tag=stafftag] {"rawtext":[{"text":"§¶§cAstro §¶§b→ §6Item Commands §bhas been toggled §cOFF §bby §d"},{"selector":"@s"}]}
execute @s[tag=stafftag,scores={ICM=2}] ~~~ scoreboard players set icmtoggledummy ICM 0
#Deny Nonstaff
execute @s[tag=!stafftag] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cAstro §¶§b→ Access §cDENIED§7! §bOnly staff can use this command"}]}
execute @s[tag=!stafftag] ~~~ execute @s ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=stafftag] ~~~ execute @s ~~~ playsound note.pling @s ~ ~ ~

scoreboard players set @s lstcmd 59





