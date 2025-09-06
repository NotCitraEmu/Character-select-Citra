-- name: [CS] Citra [WIP]
-- description: Adds some genderless demon to the game... \n\n[BOWSER MOVESET RECOMMENDED!]

-- loads model and life icon --
local E_MODEL_CITRA = smlua_model_util_get_id("citra_geo")
local TEX_CITRA_LIFE_ICON = get_texture_info("icon_citra")
local GRAFFITI_CITRA = get_texture_info("char-select-graffiti-citra")

 for _,mods in pairs(gActiveMods) do
    if mods.name == "[v0.7] \\#F78AF5\\B\\#F94A36\\3\\#4C5BFF\\3\\#EDD83D\\1\\#16C31C\\3" then
        TEX_CITRA_LIFE_ICON = get_texture_info('icon_citra_shoshinkai')
    end
 end

  for _,mods in pairs(gActiveMods) do
            if mods.name == "\\#00AAFF\\DS\\#eeeeee\\ Tweaxtures + Models" then
         E_MODEL_CITRA = smlua_model_util_get_id("citra_nitro_geo")
        TEX_CITRA_LIFE_ICON = get_texture_info('icon_citra_nitro')
            end
        end

local CAPTABLE_CITRA = {
    normal = smlua_model_util_get_id("citras_head_geo"),
    wing = smlua_model_util_get_id("citras_wing_head_geo"),
    metal = smlua_model_util_get_id("citras_metal_head_geo"),
    metalWing = smlua_model_util_get_id("citras_winged_metal_head_geo")
}

local TEXT_MOD_NAME = "Citra"

--currently shuts them tf up--

local VOICETABLE_CITRA = {
        [CHAR_SOUND_ATTACKED] = "temp.ogg",
            [CHAR_SOUND_COUGHING1] = "temp.ogg",
            [CHAR_SOUND_COUGHING2] = "temp.ogg",
            [CHAR_SOUND_COUGHING3] = "temp.ogg",
            [CHAR_SOUND_DOH] = "temp.ogg",
            [CHAR_SOUND_DROWNING] = "temp.ogg",
            [CHAR_SOUND_DYING] = "temp.ogg",
            [CHAR_SOUND_EEUH] = "temp.ogg",
            [CHAR_SOUND_GROUND_POUND_WAH] = "temp.ogg",
            [CHAR_SOUND_HAHA] = "temp.ogg",
            [CHAR_SOUND_HAHA_2] = "temp.ogg",
            [CHAR_SOUND_HERE_WE_GO] = "temp.ogg",
            [CHAR_SOUND_HOOHOO] = "temp.ogg",
            [CHAR_SOUND_HRMM] = "temp.ogg",
            [CHAR_SOUND_IMA_TIRED] = "temp.ogg",
            [CHAR_SOUND_MAMA_MIA] = "temp.ogg",
            [CHAR_SOUND_LETS_A_GO] = "temp.ogg",
            [CHAR_SOUND_ON_FIRE] = "temp.ogg",
            [CHAR_SOUND_OOOF] = "temp.ogg",
            [CHAR_SOUND_OOOF2] = "temp.ogg",
            [CHAR_SOUND_PANTING] = "temp.ogg",
            [CHAR_SOUND_PANTING_COLD] = "temp.ogg",
            [CHAR_SOUND_PUNCH_HOO] = "temp.ogg",
            [CHAR_SOUND_PUNCH_WAH] = "temp.ogg",
            [CHAR_SOUND_PUNCH_YAH] = "temp.ogg",
            [CHAR_SOUND_SO_LONGA_BOWSER] = "temp.ogg",
            [CHAR_SOUND_SNORING1] = "temp.ogg",
            [CHAR_SOUND_SNORING2] = "temp.ogg",
            [CHAR_SOUND_SNORING3] = "temp.ogg",
            [CHAR_SOUND_TWIRL_BOUNCE] = "temp.ogg",
            [CHAR_SOUND_UH] = "temp.ogg",
            [CHAR_SOUND_UH2] = "temp.ogg",
            [CHAR_SOUND_UH2_2] = "temp.ogg",
            [CHAR_SOUND_WAAAOOOW] = "temp.ogg",
            [CHAR_SOUND_WAH2] = "temp.ogg",
            [CHAR_SOUND_WHOA] = "temp.ogg",
            [CHAR_SOUND_YAHOO] = "temp.ogg",
            [CHAR_SOUND_YAWNING] = "temp.ogg",
            [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = "temp.ogg",
            [CHAR_SOUND_YAH_WAH_HOO] = "temp.ogg"
}

local CITRA_SKIN = "B72323"
local PALETTE_CITRA = {
    {

        name = "Default",
    [PANTS]  = "333333",
    [SHIRT]  = "111111",
    [GLOVES] = "B72323", -- UNUSED
    [SHOES]  = "000000",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "B72323",
    [CAP]    = "FF0000", -- metal form
    [EMBLEM] = "FFFF00" -- UNUSED
   },
   {
        name = "Fire Citra",
    [PANTS]  = "FF6600",
    [SHIRT]  = "FFFFA7",
    [GLOVES] = "0B72323",
    [SHOES]  = "000000",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "B72323",
    [CAP]    = "FFFFA7",
    [EMBLEM] = "FFFF00"
   },
   {
        name = "Pansexual",
    [PANTS]  = "FFD800",
    [SHIRT]  = "FF218C",
    [GLOVES] = "B72323",
    [SHOES]  = "21B1FF",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "B72323",
    [CAP]    = "FF218C",
    [EMBLEM] = "000000"
   },
   {
        name = "Non-Binary",
    [PANTS]  = "9B59D0",
    [SHIRT]  = "FFF433",
    [GLOVES] = "B72323",
    [SHOES]  = "000000",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "B72323",
    [CAP]    = "9B59D0",
    [EMBLEM] = "FFF433"
   },
   {
        name = "Trans",
    [PANTS]  = "F5ABB9",
    [SHIRT]  = "5BCFFA",
    [GLOVES] = "B72323",
    [SHOES]  = "FFFFFF",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "B72323",
    [CAP]    = "5BCFFA",
    [EMBLEM] = "000000"
   },
   {
        name = "Ex-Rockstar",
    [PANTS]  = "2B263C",
    [SHIRT]  = "2B263C",
    [GLOVES] = "B72323",
    [SHOES]  = "2B263C",
    [HAIR]   = "4A5C6F",
    [SKIN]   = "D396FC",
    [CAP]    = "2B26EC",
    [EMBLEM] = "FFFFFF"
   },
   {
        name = "Cephalopod",
    [PANTS]  = "000000",
    [SHIRT]  = "710000",
    [GLOVES] = "B72323",
    [SHOES]  = "FFFFFF",
    [HAIR]   = "FF6600",
    [SKIN]   = "FEC179",
    [CAP]    = "710000",
    [EMBLEM] = "FFFFFF"
   },
   {
       name = "Monochrome",
    [PANTS]  = "111111",
    [SHIRT]  = "111111",
    [GLOVES] = "B72323",
    [SHOES]  = "000000",
    [HAIR]   = "FFFFFF",
    [SKIN]   = "FFFFFF",
    [CAP]    = "000000",
    [EMBLEM] = "FFFFFF"
   },
}

-- Loads Character info, DO NOT EDIT --
if _G.charSelectExists then
    CT_CITRA = _G.charSelect.character_add("Citra", {"A Demon from another universe! Apparently they know their way around the castle walls from a previous life."}, "Citra / XxLuigiGamerxX", {r = 191, g = 31, b = 31}, E_MODEL_CITRA, CT_TOAD, TEX_CITRA_LIFE_ICON)
    _G.charSelect.character_add_caps(E_MODEL_CITRA, CAPTABLE_CITRA)

for i = 1, #PALETTE_CITRA do
    _G.charSelect.character_add_palette_preset(E_MODEL_CITRA, PALETTE_CITRA[i], PALETTE_CITRA[i].name)

        end

        if not _G.bowsMoveset then end
 -- adds power meter textures --

local HEALTH_METER_CITRA = {
    label = {
        left = get_texture_info("citra-meter-left"),
        right = get_texture_info("citra-meter-right"),
    },
    pie = {
        [1] = get_texture_info("health-1"),
        [2] = get_texture_info("health-2"),
        [3] = get_texture_info("health-3"),
        [4] = get_texture_info("health-4"),
        [5] = get_texture_info("health-5"),
        [6] = get_texture_info("health-6"),
        [7] = get_texture_info("health-7"),
        [8] = get_texture_info("health-8"),
    }
}

-- adds course meter textures --

local COURSE_METER_CITRA = {
    top = get_texture_info("citra-course-top"),
    bottom = get_texture_info("citra-course-bottom"),
}

-- death in CCM and SML by cold --

if gNetworkPlayers[0].currLevelNum == 5 or 10 or 16 then
        water_damage_multiplier = 9999 
end

---- BOWSER MOVESET:

if _G.bowsMoveset then
    -- Retrieves the custom shell model for this character. Check template_shell.blend for how to set up a shell model properly.
    local E_MODEL_CITRA_SHELL = smlua_model_util_get_id("citra_geo")

    -- This is a bitfield of flags that decide which parts of the Bowser Moveset this character will have.
    -- Insert each flag you want to be set, separated by '|' symbols.
    local BOWS_FLAGS_CITRA =
        _G.bowsMoveset.FLAG_CAN_USE_FIREBALL | _G.bowsMoveset.FLAG_ATTACKS | _G.bowsMoveset.FLAG_STYLE_ANIMS

    -- Flag Options: (sorry the ids are so long pshgkjdf)

    -- _G.bowsMoveset.FLAG_CAN_USE_SHELL
    --- Allows the character to use the shell slide ability.

    -- _G.bowsMoveset.FLAG_CAN_USE_FIREBALL
    --- Allows the character to use the fire breath ability.

    -- _G.bowsMoveset.FLAG_STYLE_ANIMS
    --- Enables Bowser-unique animations for the character.

    -- _G.bowsMoveset.FLAG_SIZE_ANIMS
    --- Adjusts the character's pose in certain animations to suit bowser's large size. (i.e. ledge grab)

    -- _G.bowsMoveset.FLAG_LARGE_HITBOX
    --- Gives the character a larger hitbox size. (37 -> 85 units radius)
    --- This does not affect the hitbox size for level collision, only collisions with objects.

    -- _G.bowsMoveset.FLAG_NO_CAPLESS
    --- The character does not visually lose their 'cap'. Will also use their 'capless' head state in some animations.
    --- Used by Bowser to allow his jaw to open when breathing fire, etc.

    -- _G.bowsMoveset.FLAG_HEAVY_STEPS
    --- Enables heavier landing sound effects for the character.

    -- _G.bowsMoveset.FLAG_ATTACKS
    --- Enables the alternate sliding punch.

    -- _G.bowsMoveset.FLAG_ALL
    --- Shorthand to set all flags.


    -- This function sets up the flags for your character.
    -- parameters: [your character model], [your flag bitfield]
    _G.bowsMoveset.character_set_bows_flags(E_MODEL_CITRA, BOWS_FLAGS_CITRA)
end

-- A bunch of hooking shit --
    _G.charSelect.character_add_health_meter(CT_CITRA, HEALTH_METER_CITRA)
    _G.charSelect.character_add_graffiti(CT_CITRA, GRAFFITI_CITRA)
        _G.charSelect.character_add_course_texture(CT_CITRA, COURSE_METER_CITRA)

    _G.charSelect.character_add_voice(E_MODEL_CITRA, VOICETABLE_CITRA)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CITRA then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CITRA then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nSCRIPT ERRORS MY BELOVED!\n\nplease enable\nCHARACTER SELECT\nBOWSER MOVESET", 6)
end