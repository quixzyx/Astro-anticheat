execute @s[tag=stafftag] ~~~ dialogue open @s @s Astro_gui_main
execute @s[tag=!stafftag] ~~~ playsound note.bass @s ~ ~ ~
execute @s[tag=stafftag] ~~~ playsound note.pling @s ~ ~ ~
execute @s[tag=!stafftag] ~~~ tellraw @s {"rawtext":[{"text":"§¶§cAstro → §bYou must be staff to do this command. The tag for staff is §6stafftag"}]}
