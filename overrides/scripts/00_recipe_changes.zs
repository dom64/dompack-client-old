#Name: recipe_changes.zs
#Author: Feed the Beast

print("Initializing 'recipe_changes.zs'...");

	#Remove ChunkLoaders (use FTBU to manage chunkloading)
recipes.remove(<ic2:te:82>);

	#Atempt to fix TiC grout shapless recipe
recipes.addShapeless(<tconstruct:soil> * 2, [<minecraft:sand>, <minecraft:gravel>, <minecraft:clay_ball>]);

	#Fix wood gear recipe in grindstone
recipes.remove(<appliedenergistics2:material:40>);

	#Remove ExU2 Sickles to prevent overlap with Thermal Foundation Sickles
recipes.remove(<extrautils2:sickle_wood>);
recipes.remove(<extrautils2:sickle_stone>);
recipes.remove(<extrautils2:sickle_iron>);
recipes.remove(<extrautils2:sickle_gold>);
recipes.remove(<extrautils2:sickle_diamond>);

	#Changed Bark recipe to prevent overlap with Wood piles
recipes.remove(<quark:bark:5>);
recipes.addShaped(<quark:bark:5> * 2, 
	[
		[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>],
		[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>],
		[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>]
	]
);

recipes.remove(<quark:bark:4>);
recipes.addShaped(<quark:bark:4> * 2,
	[
		[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>],
		[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>],
		[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>]
	]
);

recipes.remove(<quark:bark:3>);
recipes.addShaped(<quark:bark:3> * 2,
	[
		[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>],
		[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>],
		[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>]
	]
);

recipes.remove(<quark:bark:2>);
recipes.addShaped(<quark:bark:2> * 2,
	[
		[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>],
		[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>],
		[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>]
	]
);

recipes.remove(<quark:bark:1>);
recipes.addShaped(<quark:bark:1> * 2,
	[
		[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>],
		[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>],
		[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]
	]
);

recipes.remove(<quark:bark>);
recipes.addShaped(<quark:bark> * 2,
	[
		[<minecraft:log>, <minecraft:log>, <minecraft:log>],
		[<minecraft:log>, <minecraft:log>, <minecraft:log>],
		[<minecraft:log>, <minecraft:log>, <minecraft:log>]
	]
);

	#Convert Quark deco adds to vanilla equiv
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:4>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:3>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:2>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:1>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:4>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:3>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:2>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:1>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest>]
);

	#Items removed due to bugs
recipes.remove(<actuallyadditions:item_bag>);
<actuallyadditions:item_bag>.addTooltip(format.darkRed("Disabled due to bug!"));
recipes.remove(<extrautils2:bagofholding>);
<extrautils2:bagofholding>.addTooltip(format.darkRed("Disabled due to bug!"));

	#Changed Iron Lattice recipe to fix conflict with iron gears
recipes.remove(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 4,
	[
		[null, <minecraft:iron_nugget>, null],
		[<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
		[null, <minecraft:iron_nugget>, null]
	]
);

	#Reduce crafting of bronze ingots to 2 from 4 in crafting table, various machine outputs are still 4
recipes.remove(<forestry:ingot_bronze>);
recipes.addShapeless(<thermalfoundation:material:163> * 2,
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>]
);

	#Fix bronze gear recipe
recipes.addShaped(<thermalfoundation:material:291>,
	[
		[null, <ore:ingotBronze>, null],
		[<ore:ingotBronze>, <minecraft:iron_ingot>, <ore:ingotBronze>],
		[null, <ore:ingotBronze>, null]
	]
);

	#Experience Solidifier
recipes.remove(<actuallyadditions:block_xp_solidifier>);
recipes.addShaped(<actuallyadditions:block_xp_solidifier>,
	[
		[<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>],
		[<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:item_misc:8>, <actuallyadditions:block_crystal_empowered:2>],
		[<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>]
	]
);

	#Harvestcraft Cracker Recipe
recipes.remove(<harvestcraft:crackersitem>);
recipes.addShapeless(<harvestcraft:crackersitem> * 2,
	[<harvestcraft:crackeritem>, <harvestcraft:crackeritem>]
);

	#Architecture Craft Pulley
recipes.remove(<architecturecraft:largepulley>);
recipes.addShaped(<architecturecraft:largepulley>,
	[
		[null, <ore:slabWood>, null],
		[<ore:slabWood>, <ore:plankWood>, <ore:slabWood>],
		[null, <ore:slabWood>, null]
	]
);

	#Removed Charcoal Block (chisel) to allow AA's version be default which is registered as a fuel type
recipes.remove(<chisel:block_charcoal2:1>);

	#Wither ash
recipes.addShaped(<minecraft:skull:1>,
	[
		[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
		[<quark:black_ash>, <minecraft:skull>, <quark:black_ash>],
		[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]
	]
);

	#Fix barley seed overlap
recipes.remove(<harvestcraft:barleyitem>);
recipes.addShapeless(<harvestcraft:barleyseeditem> * 2,
	[<harvestcraft:barleyitem>, <harvestcraft:barleyitem>]
);

	#Steel Casing
recipes.addShapeless(<ic2:casing:5> * 2, 
	[<thermalfoundation:material:352>,<ic2:forge_hammer>]
);

	#Essence of Scornful Oblivion
recipes.addShaped(<magicbees:resource:11>,
	[
		[<magicbees:resource:8>, <minecraft:skull:1>, <magicbees:resource:9>],
		[<minecraft:skull:1>, null, <minecraft:skull:1>],
		[<magicbees:resource:9>, <minecraft:skull:1>, <magicbees:resource:8>]
	]
);

	#Computercraft modem fix
recipes.remove(<computercraft:cable:1>);
recipes.addShapeless(<computercraft:wired_modem_full>,
	[<computercraft:cable:1>]
);
recipes.addShapeless(<computercraft:cable:1>,
	[<computercraft:wired_modem_full>]
);
recipes.addShaped(<computercraft:cable:1>,
	[
		[<ore:materialStoneTool>, <ore:materialStoneTool>, <ore:materialStoneTool>],
		[<ore:materialStoneTool>, <ore:blockRedstone>, <ore:materialStoneTool>],
		[<ore:materialStoneTool>, <ore:materialStoneTool>, <ore:materialStoneTool>]
	]
);

	#End star fix
recipes.remove(<minecraft:end_crystal>);
recipes.addShaped(<minecraft:end_crystal>,
	[
		[<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>],
		[<ore:paneGlassColorless>, <minecraft:nether_star>, <ore:paneGlassColorless>],
		[<ore:paneGlassColorless>, <minecraft:ghast_tear>, <ore:paneGlassColorless>]
	]
);

	#Rustic Rope fix
recipes.remove(<rustic:rope>);
recipes.addShaped(<rustic:rope> * 24,
	[
		[<minecraft:string>, null, <minecraft:string>],
		[<minecraft:string>, null, <minecraft:string>],
		[<minecraft:string>, null, <minecraft:string>]
	]
);

	#Fix RC loader/Unloader steel shovels
recipes.addShaped(<railcraft:manipulator:3>,
	[
		[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>],
		[<ore:dustRedstone>, <railcraft:manipulator:1>, <ore:dustRedstone>],
		[<ore:ingotSteel>, <thermalfoundation:tool.shovel_steel>, <ore:ingotSteel>]
	]
);

recipes.addShaped(<railcraft:manipulator:2>,
	[
		[<ore:ingotSteel>, <ore:dustRedstone>, <ore:ingotSteel>],
		[<ore:dustRedstone>, <railcraft:manipulator>, <ore:dustRedstone>],
		[<ore:ingotSteel>, <thermalfoundation:tool.shovel_steel>, <ore:ingotSteel>]
	]
);

print("Initialized 'recipe_changes.zs'");