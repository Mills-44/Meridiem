REVERIE = {}

Reverie = SMODS.current_mod
Reverie_config = Reverie.config
Reverie.enabled = copy_table(Reverie_config)
Reverie_path = SMODS.current_mod.path

--Load Lib Files
SMODS.load_file("lib/content.lua")() -- Definitions/Content Add
SMODS.load_file("lib/pools.lua")() -- Pools created in code for mod
SMODS.load_file("lib/util.lua")() -- Util functionality

-- Load Jokers
REVERIE.file_loader(REVERIE.JOKERS, "content/jokers")