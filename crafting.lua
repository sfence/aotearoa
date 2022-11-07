
---------------------------------------------------------
--CRAFTS

--green_shovel
dofile(aotearoa.path .. "/green_shovel.lua")


---------------------------------------------------------
--Furnace from soft sedimentary rocks
minetest.register_craft({
	output = 'hades_furnaces:furnace',
	recipe = {
		{'group:soft_stone', 'group:soft_stone', 'group:soft_stone'},
		{'group:soft_stone', '', 'group:soft_stone'},
		{'group:soft_stone', 'group:soft_stone', 'group:soft_stone'},
	}
})


-----------------------------------------
--Stone Axe recipe from gravel
-- to make up for unbreakable trees.
--[[
minetest.register_craft({
	output = 'hades_core:axe_stone',
	recipe = {
		{'hades_core:gravel', 'hades_core:gravel'},
		{'hades_core:gravel', 'group:stick'},
		{'', 'group:stick'},
	}
})
--]]


-------------------------
--Kauri Gum
minetest.register_craftitem("hades_aotearoa:kauri_gum", {
	description = "Kauri Gum",
	inventory_image = "aotearoa_kauri_gum.png",
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_aotearoa:kauri_gum",
	burntime = 3,
})

------------
--Kauri gum torch
minetest.register_craft({
	output = 'hades_core:torch 4',
	recipe = {
		{'hades_aotearoa:kauri_gum'},
		{'group:stick'},
	}
})



-------------------------------------
--SUBSTITUTES
-- replacements for defualt veg that didn't make it here.

------------------------
--Paper

minetest.register_craft({
	output = 'hades_core:paper',
	recipe = {
		{'hades_aotearoa:kauri_grass', 'hades_aotearoa:kauri_grass', 'hades_aotearoa:kauri_grass'},
	}
})

minetest.register_craft({
	output = 'hades_core:paper',
	recipe = {
		{'hades_aotearoa:flax', 'hades_aotearoa:flax', 'hades_aotearoa:flax'},
	}
})

minetest.register_craft({
	output = 'hades_core:paper',
	recipe = {
		{'hades_aotearoa:raupo', 'hades_aotearoa:raupo', 'hades_aotearoa:raupo'},
	}
})


------------------------------
--- Dyes



--Orange Dye.
--Green Dye.
--Purple Dye.


--Tanekaha for tan?
--red ochre, drop from clay. Cook togive red Dye?


----------------
--White Dye
--Taioma. White, from burnt clay with shark oil.
--[[
minetest.register_craft({
	type = "cooking",
	output = "hades_dye:white 4",
	recipe = "hades_core:clay",
})
--]]

-------------
--Red Dye
--Kauri grass (technically the berries)
minetest.register_craft({
	type = "shapeless",
	output = "hades_dye:red 4",
	recipe = {"hades_aotearoa:kauri_grass"},
})




---------------------------
--Dyes from Tree soot. etc
--traditionally used for tattoos.
-- blues, browns, blacks... multiple colors for same species.
--
------------
--Blue Dye.
--from tree soot.

--from Kauri soot
minetest.register_craft({
	output = "hades_dye:blue 4",
  recipe = {
    {'hades_aotearoa:kauri_tree'},
    {'hades_core:torch'},
  },
  replacements = {{"hades_core:torch", "hades_core:torch"}}
})

--from Rimu soot
minetest.register_craft({
	output = "hades_dye:blue 4",
  recipe = {
    {'hades_aotearoa:rimu_tree'},
    {'hades_core:torch'},
  },
  replacements = {{"hades_core:torch", "hades_core:torch"}}
})

--------------
--Black Dye

--from kauri gum soot
minetest.register_craft({
	output = "hades_dye:black 4",
  recipe = {
    {'hades_aotearoa:kauri_gum'},
    {'hades_core:torch'},
  },
  replacements = {{"hades_core:torch", "hades_core:torch"}}
})

--from Kahikatea soot
minetest.register_craft({
	output = "hades_dye:black 4",
  recipe = {
    {'hades_aotearoa:kahikatea_tree'},
    {'hades_core:torch'},
  },
  replacements = {{"hades_core:torch", "hades_core:torch"}}
})

--Karo, but don't know how it is made.

--[[
--disabled because makes it too easy
--from mahoe (technically the berries)
minetest.register_craft({
	output = "dye:black 4",
  recipe = {
    {'hades_aotearoa:mahoe_leaves'},
  },
})
]]

-- from hinau bark. Not sure how done. Possibly boiled
minetest.register_craft({
	type = "cooking",
	output = "hades_dye:black 4",
	recipe = "hades_aotearoa:hinau_tree",
})

------------
--Brown Dye.
--from tree soot.
--from Kahikatea soot
minetest.register_craft({
	output = "hades_dye:brown 4",
  recipe = {
    {'hades_aotearoa:miro_tree'},
    {'hades_core:torch'},
  },
  replacements = {{"hades_core:torch", "hades_core:torch"}}
})


----------------
--Red Dye
-- by boiling kamahi
minetest.register_craft({
	type = "cooking",
	output = "hades_dye:red 4",
	recipe = "hades_aotearoa:kamahi_tree",
})


----------------
--Yellow Dye
-- by boiling Rangiora bark
minetest.register_craft({
	type = "cooking",
	output = "hades_dye:yellow 4",
	recipe = "hades_aotearoa:rangiora_tree",
})

--from kowhai flowers
minetest.register_craft({
	output = "hades_dye:yellow 4",
  recipe = {
    {'hades_aotearoa:kowhai_leaves'},
  },
})



--------------------------------------------
-- Fences
for i in ipairs(aotearoa.treelist) do
local treename			= aotearoa.treelist[i][1]
minetest.register_craft({
	output = "hades_aotearoa:fence_"..treename.."_wood 4",
	recipe = {
		{"hades_aotearoa:"..treename.."_wood", "group:stick", "hades_aotearoa:"..treename.."_wood"},
		{"hades_aotearoa:"..treename.."_wood", "group:stick", "hades_aotearoa:"..treename.."_wood"},
	}
})
end







------------------------------------------------
--FOOD.

-------------
--Bracken Root
minetest.register_craftitem("hades_aotearoa:cooked_bracken_root", {
	description = "Cooked Bracken Root",
	inventory_image = "aotearoa_cooked_bracken_root.png",
  on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_bracken_root",
	recipe = "hades_aotearoa:bracken",
})


---------
---Raupo Root
minetest.register_craftitem("hades_aotearoa:cooked_raupo_root", {
	description = "Cooked Raupo Root",
	inventory_image = "aotearoa_cooked_bracken_root.png",
  on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_raupo_root",
	recipe = "hades_aotearoa:raupo",
})


-------------
--Raupo pollen cake
minetest.register_craftitem("hades_aotearoa:pungapunga", {
	description = "Pungapunga Pollen Cake",
	inventory_image = "aotearoa_pungapunga.png",
  on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:pungapunga",
	recipe = "hades_aotearoa:raupo_flower",
})



--------
--Tree Seeds.
-- slight simplification...but...
-->berry (some edible)->seed meal (useless) ->seed cake
--raw fruit =1. Cooking releases a little value. 4 go into a cake.
--cake = 1.25 *4 = 5 (same as default bread.)

minetest.register_craftitem("hades_aotearoa:seed_meal", {
	description = "Seed Meal",
	inventory_image = "aotearoa_cooked_karaka_kernels.png",
  --on_use = minetest.item_eat(2),
})

minetest.register_craftitem("hades_aotearoa:seed_cake", {
	description = "Seed Cake",
	inventory_image = "aotearoa_pungapunga.png",
  on_use = minetest.item_eat(5),
})

--craft seed meal
--karaka
minetest.register_craft({
	type = "shapeless",
	output = "hades_aotearoa:seed_meal",
	recipe = {"hades_aotearoa:karaka_fruit", "hades_aotearoa:karaka_fruit", "hades_aotearoa:karaka_fruit", "hades_aotearoa:karaka_fruit"}
})

--tawa
minetest.register_craft({
	type = "shapeless",
	output = "hades_aotearoa:seed_meal",
	recipe = {"hades_aotearoa:tawa_fruit", "hades_aotearoa:tawa_fruit", "hades_aotearoa:tawa_fruit", "hades_aotearoa:tawa_fruit"}
})

--hinau
minetest.register_craft({
	type = "shapeless",
	output = "hades_aotearoa:seed_meal",
	recipe = {"hades_aotearoa:hinau_fruit", "hades_aotearoa:hinau_fruit", "hades_aotearoa:hinau_fruit", "hades_aotearoa:hinau_fruit"}
})

--cook seed meal to seed cake.
minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:seed_cake",
	recipe = "hades_aotearoa:seed_meal",
})

--[[
--Redundant 0.1 code and items...
--Cook karaka
minetest.register_craftitem("hades_aotearoa:cooked_karaka_kernels", {
	description = "Cooked Karaka Kernels",
	inventory_image = "aotearoa_cooked_karaka_kernels.png",
  on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_karaka_kernels",
	recipe = "hades_aotearoa:karaka_fruit",
})

----------
--Cook Tawa
minetest.register_craftitem("hades_aotearoa:cooked_tawa_kernels", {
	description = "Cooked Tawa Kernels",
	inventory_image = "aotearoa_cooked_karaka_kernels.png",
  on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_tawa_kernels",
	recipe = "hades_aotearoa:tawa_fruit",
})

]]

---------------
--Fern fiddleheads
minetest.register_craftitem("hades_aotearoa:cooked_fiddlehead", {
	description = "Cooked fiddlehead",
	inventory_image = "aotearoa_cooked_fiddlehead.png",
  on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_fiddlehead",
	recipe = "hades_aotearoa:mamaku_crown",
})

------------
--mamaku pith
minetest.register_craftitem("hades_aotearoa:cooked_mamaku_pith", {
	description = "Cooked Mamaku Pith",
	inventory_image = "aotearoa_cooked_mamaku_pith.png",
  on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_mamaku_pith",
	recipe = "hades_aotearoa:mamaku_tree",
})

------------
--Cabbage tree root
minetest.register_craftitem("hades_aotearoa:cooked_cabbage_tree_root", {
	description = "Cooked Cabbage Tree Root",
	inventory_image = "aotearoa_cooked_cabbage_tree_root.png",
  on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_cabbage_tree_root",
	recipe = "hades_aotearoa:cabbage_tree_tree",
})

--------------
--Cabbage tree shoots
minetest.register_craftitem("hades_aotearoa:cooked_cabbage_tree_shoots", {
	description = "Cooked Cabbage Tree Shoots",
	inventory_image = "aotearoa_cooked_cabbage_tree_shoots.png",
  on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_cabbage_tree_shoots",
	recipe = "hades_aotearoa:cabbage_tree_crown",
})

------------
--Nikau shoots
minetest.register_craftitem("hades_aotearoa:cooked_nikau_shoots", {
	description = "Cooked Nikau Shoots",
	inventory_image = "aotearoa_cooked_cabbage_tree_shoots.png",
  on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:cooked_nikau_shoots",
	recipe = "hades_aotearoa:nikau_palm_skirt",
})


--------------------------------------------------
--SOME TRADTIONAL USES.


--woven bags/mats from pingao, flax, Kauri grass, cabbage_tree, nikau?


---------------------------------
--flax rope.
minetest.register_node("hades_aotearoa:flax_rope", {
	description = "Flax Rope",
	drawtype = "signlike",
	tiles = {"aotearoa_flax_rope.png"},
	inventory_image = "aotearoa_flax_rope.png",
	wield_image = "aotearoa_flax_rope.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "wallmounted",
		--wall_top = = <default>
		--wall_bottom = = <default>
		--wall_side = = <default>
	},
	groups = {snappy = 3, oddly_breakable_by_hand = 3, flammable = 2},
	legacy_wallmounted = true,
	sounds = hades_sounds.node_sound_leaves_defaults(),
})


minetest.register_craft({
	output = "hades_aotearoa:flax_rope 3",
  recipe = {
    {'hades_aotearoa:flax'},
    {'hades_aotearoa:flax'},
    {'hades_aotearoa:flax'},
  },
})


-------------------------------
--ponga fence from Tree ferns
minetest.register_node('hades_aotearoa:ponga_fence', {
	description = 'Ponga Fence',
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {{-1/4, -1/2, -1/4, 1/4, 1/2, 1/4}},
		-- connect_bottom =
		connect_front = {{-1/4, -1/2, -1/2,  1/4, 1/2, -1/4}},
		connect_left = {{-1/2, -1/2, -1/4, -1/4, 1/2,  1/4}},
		connect_back = {{-1/4, -1/2,  1/4,  1/4, 1/2,  1/2}},
		connect_right = {{ 1/4, -1/2, -1/4,  1/2, 1/2,  1/4}},
	},
	connects_to = { "group:crumbly", "group:wood", "group:tree", "group:stone",'hades_aotearoa:ponga_fence',},
	paramtype = "light",
  tiles = {
    "aotearoa_ponga_fence_top.png",
    "aotearoa_ponga_fence_top.png",
    "aotearoa_ponga_fence.png"
  },
	inventory_image = "aotearoa_ponga_fence.png",
	wield_image = "aotearoa_ponga_fence.png",
	groups = {choppy = 3, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = hades_sounds.node_sound_wood_defaults(),
    -- @@@ Josselin2
    use_texture_alpha = "clip",    
})

minetest.register_craft({
	output = 'hades_aotearoa:ponga_fence',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'hades_aotearoa:wheki_tree', 'hades_aotearoa:wheki_tree', 'hades_aotearoa:wheki_tree'},
	}
})

minetest.register_craft({
	output = 'hades_aotearoa:ponga_fence',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'hades_aotearoa:silver_fern_tree', 'hades_aotearoa:silver_fern_tree', 'hades_aotearoa:silver_fern_tree'},
	}
})

minetest.register_craft({
	output = 'hades_aotearoa:ponga_fence',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'hades_aotearoa:mamaku_tree', 'hades_aotearoa:mamaku_tree', 'hades_aotearoa:mamaku_tree'},
	}
})

minetest.register_craft({
	type = "fuel",
	recipe = "hades_aotearoa:ponga_fence",
	burntime = 3,
})


-------------------------------------------
--SOILS.

--Peat as a Fuel source
minetest.register_craft({
	type = "fuel",
	recipe = "hades_aotearoa:peat",
	burntime = 30,
})

--make dirt
minetest.register_craft({
	output = 'hades_core:dirt 4',
	recipe = {
		{'group:sand', 'hades_core:clay'},
		{'hades_aotearoa:silt', 'hades_aotearoa:peat'},
	}
})

minetest.register_craft({
	output = 'hades_core:dirt 4',
	recipe = {
		{'group:sand', 'hades_core:clay'},
		{'hades_aotearoa:silt', 'hades_aotearoa:rotten_wood'},
	}
})


----------------------------------------
--IRON SAND

--iron sand is famously difficult to smelt.
minetest.register_craft({
	type = 'cooking',
	output = 'hades_core:iron_lump',
	recipe = 'hades_aotearoa:iron_sand',
	cooktime = 30,
})


-----------------------------------
--LIMESTONE
--we have the materials so...
--Roman style concrete.

--lime source->crushed lime ->cook -> quicklime (-> hydrated lime) -> + volcanic sand + gravel -> concrete
-- need crushing stage to avoid conflicts with other crafts.
-- could drop slaking stage as makes it too complicted.
--needs some benefit to justify such a complicated process.
--its actual benefit cant be captured (e.g flexibility of form).
-- so...double number of blocks you get.
-- 3 staring blocks: lime source + vol. sand + gravel. = 6 concrete.

--lime sources to crushed lime
--to avoid recipe conflicts needs a little odd recipe... two steel crushers
minetest.register_craftitem("hades_aotearoa:crushed_lime", {
	description = "Crushed Lime",
	inventory_image = "aotearoa_crushed_lime.png",
})

--4 shells = 1 limestone... doesn't fit the pattern...
--just force them to make coquina.

--from coquina
minetest.register_craft({
	output = "hades_aotearoa:crushed_lime",
	recipe = {
		{'hades_core:steel_ingot'},
    {'hades_aotearoa:coquina_limestone'},
    {'hades_core:steel_ingot'},
  },
  replacements = {
		{"hades_core:steel_ingot", "hades_core:steel_ingot"},
		{"hades_core:steel_ingot", "hades_core:steel_ingot"}
	}
})

--from limestone
minetest.register_craft({
	output = "hades_aotearoa:crushed_lime",
  recipe = {
		{'hades_core:steel_ingot'},
    {'hades_aotearoa:limestone'},
    {'hades_core:steel_ingot'},
  },
  replacements = {
		{"hades_core:steel_ingot", "hades_core:steel_ingot"},
		{"hades_core:steel_ingot", "hades_core:steel_ingot"}
	}
})

--cook to quicklime
minetest.register_craftitem("hades_aotearoa:quicklime", {
	description = "Quicklime",
	inventory_image = "aotearoa_quicklime.png",
})

minetest.register_craft({
	type = "cooking",
	output = "hades_aotearoa:quicklime",
	recipe = "hades_aotearoa:crushed_lime",
})

--make concrete
minetest.register_craft({
	output = "hades_aotearoa:concrete 6",
	recipe = {
		{"hades_aotearoa:quicklime", "group:sand", "hades_core:gravel"},
	}
})

--[[----------------------------------------------
--ARTIFIICAL DIAMONDS...
-- because NZ has no diamonds
--slow.

minetest.register_craft({
	type = 'cooking',
	output = 'hades_core:diamond',
	recipe = 'hades_core:coalblock',
	cooktime = 360,
})
]]

----------------------------------------------
--ARTIFICIAL MESE...
-- because... its ...mese
-- something hocus pocus!?
-- pounamu is the most mystical rock... so it can be transformed.

minetest.register_craft({
	output = 'hades_core:mese',
	recipe = {
		{'hades_aotearoa:granite', 'hades_core:gold_ingot', 'hades_aotearoa:gneiss'},
		{'hades_core:copper_ingot', 'hades_aotearoa:pounamu', 'hades_core:steel_ingot'},
		{'hades_aotearoa:andesite', 'hades_core:tin_ingot', 'hades_aotearoa:limestone'},
	}
})
