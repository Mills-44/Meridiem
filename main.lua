MERIDIEM = {}

Meridiem = SMODS.current_mod
Meridiem_config = Meridiem.config
Meridiem.enabled = copy_table(Meridiem_config)
Meridiem_path = SMODS.current_mod.path

--Load Lib Files
SMODS.load_file("lib/content.lua")() -- Definitions/Content Add
SMODS.load_file("lib/pools.lua")() -- Pools created in code for mod
SMODS.load_file("lib/util.lua")() -- Util functionality

-- Load Sound FX's
SMODS.load_file("content/sound.lua")()

-- Load Gradients
MERIDIEM.file_loader(MERIDIEM.GRADIENTS, "content/gradients")

-- Load Jokers
MERIDIEM.file_loader(MERIDIEM.JOKERS, "content/jokers")

-- Load Seals
MERIDIEM.file_loader(MERIDIEM.SEALS, "content/seals")

-- Load Editions
MERIDIEM.file_loader(MERIDIEM.EDITIONS, "content/editions")

-- Load Stickers
MERIDIEM.file_loader(MERIDIEM.STICKERS, "content/stickers")