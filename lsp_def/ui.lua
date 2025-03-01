---@meta

SMODS.GUI = {}
SMODS.GUI.DynamicUIManager = {}

---@type string|"achievements"|"config"|"credits"|"mod_desc"|"additions"
SMODS.LAST_SELECTED_MOD_TAB = ""

---@type boolean?
SMODS.IN_MODS_TAB = nil

-- UI Functions
---@param str string
---@return any?
--- Unpacks provided string. 
function STR_UNPACK(str) end

---@param args table
---@return table
--- Creates UIBox for individual mod tabs. 
function create_UIBox_mods(args) end

---@param mod Mod
---@return table
--- Creates UIBox for Mod's Description tab. 
function buildModDescTab(mod) end

---@param mod Mod
---@return table
--- Creates UIBox for Mod's "Additions" tab. 
function buildAdditionsTab(mod) end

---@param e table?
--- Button function for "Other" collections menu
G.FUNCS.your_collection_other_gameobjects = function(e) end

---@return table|nil UIBox
--- Creates UIBox for "Other" collections menu
function create_UIBox_Other_GameObjects() end

---@param e table?
--- Button function for "Consumables" collections menu UIBox
G.FUNCS.your_collection_consumables = function(e) end

---@return table UIBox
--- Creates UIBox for "Consumables" collections menu
function create_UIBox_your_collection_consumables() end

---@param args table?
--- Pages button function for "Consumables" collection menu
G.FUNCS.your_collection_consumables_page = function(args) end

---@param page? number
---@return table UIBox
--- Creates UIBox for "Consumables" collection menu pages. 
G.UIDEF.consumable_collection_page = function(page) end

---@param mod Mod
---@param current_page number?
---@return table
--- Creates UIBox for Mod's "Achievements" tab. 
function buildAchievementsTab(mod, current_page) end

---@param args table?
--- Pages button function for "Achievements" tab
G.FUNCS.achievments_tab_page = function(args) end

---@param pool table[]
---@param set string? Only objects with matching set will be tallied. 
---@return {tally: 0|number, of: 0|number} 
--- Tallies all objects within `pool` that are discovered. 
function modsCollectionTally(pool, set) end

---@param mod Mod
---@return table
--- Creates Mod tag UI for Mods list menu. 
function buildModtag(mod) end

---@param options table?
--- Opens "Mods" directory. 
function G.FUNCS.openModsDirectory(options) end

---@param mod Mod
---@return table
--- Loads mod config. 
function SMODS.load_mod_config(mod) end

---@param mod Mod
---@return boolean
--- Saves mod config
function SMODS.save_mod_config(mod) end

--- Saves all mod configs. 
function SMODS.save_all_config() end

---@param e table?
--- Exits mods tab. 
function G.FUNCS.exit_mods(e) end

---@return table
--- Creates UIBox for SMODS Menu. 
function create_UIBox_mods_button() end

---@param e table?
--- Updates achievements settings. 
function G.FUNCS.update_achievement_settings(e) end

---@param e table?
--- Button function for Steamodded Github link. 
function G.FUNCS.steamodded_github(e) end

---@param e table?
--- Updates UI to display SMODS menu. 
function G.FUNCS.mods_button(e) end

---@param args table
--- Updates mod list. 
function G.FUNCS.update_mod_list(args) end

---@param args table
---@return table
--- Same as Balatro base game code, but accepts a value to match against (rather than the index in the option list)
--- e.g. create_option_cycle({ current_option = 1 })  vs. SMODS.GUI.createOptionSelector({ current_option = "Page 1/2" })
function SMODS.GUI.createOptionSelector(args) end

---@param args table
---@return table
-- Initialize a tab with sections that can be updated dynamically (e.g. modifying text labels, showing additional UI elements after toggling buttons, etc.)
function SMODS.GUI.DynamicUIManager.initTab(args) end

---@param uiDefinitions table<string, UIBox|table>
--- Updates all provided dynamic UIBoxes. 
function SMODS.GUI.DynamicUIManager.updateDynamicAreas(uiDefinitions) end

---@return table
--- Define the content in the pane that does not need to update
--- Should include OBJECT nodes that indicate where the dynamic content sections will be populated
--- EX: in this pane the 'modsList' node will contain the dynamic content which is defined in the function below
function SMODS.GUI.staticModListContent() end

---@param page number?
---@return table
--- Creates mod list. 
function SMODS.GUI.dynamicModListContent(page) end

---@param args table
--- Updates mipmap. 
function G.FUNCS.SMODS_change_mipmap(args) end

---@class CardCollection
---@field w_mod? number CardArea width modifier. 
---@field h_mod? number CardArea height modifier. 
---@field card_scale? number Card scale modifier. 
---@field collapse_single_page? boolean Removes a row if there's only one page. 
---@field area_type? string CardArea type. 
---@field center? string Key to a center. All created cards will have this as their center. 
---@field no_materialize? boolean Sets if the card play materialize animations when created. 
---@field back_func? string Back function of the collections UI. 
---@field hide_single_page? boolean Hides the page portion of the UI if there's only one page. 
---@field infotip? string Text displayed above the collections menu (e.x. Edition/Seal/Enhancement). 
---@field snap_back? boolean Some controller related. TODO define more specific term
---@field modify_card? fun(card: Card|table, center: SMODS.GameObject|table, i: number, j: number) Modifies all created cards for this collection. 

---@param _pool table
---@param rows number[]
--- Creates a default
function SMODS.card_collection_UIBox(_pool, rows, args) end

---@return table UIBox
--- Creates UIBox for "Jokers" collection menu
function create_UIBox_your_collection_jokers() end

---@return table UIBox
--- Creates UIBox for "Boosters" collection menu
function create_UIBox_your_collection_boosters() end

---@return table UIBox
--- Creates UIBox for "Vouchers" collection menu
function create_UIBox_your_collection_vouchers() end

---@return table UIBox
--- Creates UIBox for "Enhancements" collection menu
function create_UIBox_your_collection_enhancements() end

---@return table UIBox
--- Creates UIBox for "Editions" collection menu
function create_UIBox_your_collection_editions() end

---@return table UIBox
--- Creates UIBox for "Seals" collection menu
function create_UIBox_your_collection_seals() end

---@param e table?
--- Button function for "Stickers" collection menu
G.FUNCS.your_collection_stickers = function(e) end

---@return table UIBox
--- Creates UIBox for "Stickers" collection menu
function create_UIBox_your_collection_stickers() end