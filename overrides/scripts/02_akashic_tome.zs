print("Akashic Tome");


// Akashic Tome
//
var fullTome = <akashictome:tome> .withTag(

	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			
			forestry: {
				id: "forestry:book_forester",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "forestry"
				},
				Damage: 0 as short
			},


			valkyrielib: {
				id: "valkyrielib:guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "valkyrielib"
				},
				Damage: 0 as short
			},

			astralsorcery: {
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery"
				},
				Damage: 0 as short
			},

			tconstruct: {
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct"
				},
				Damage: 0 as short
			},

			conarm: {
				id: "conarm:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "conarm"
				},
				Damage: 0 as short
			},

			botania: {
				id: "botania:lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "botania"
				},
				Damage: 0 as short
			},

			actuallyadditions: {
				id: "actuallyadditions:item_booklet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "actuallyadditions"
				},
				Damage: 0 as short
			},

			rftools1: {
				id: "rftools:rftools_shape_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools1"
				},
				Damage: 0 as short
			},

			rftoolscontrol: {
				id: "rftoolscontrol:rftoolscontrol_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftoolscontrol"
				},
				Damage: 0 as short
			},

			industrialforegoing: {
				id: "industrialforegoing:book_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "industrialforegoing"
				},
				Damage: 0 as short
			},

			immersiveengineering: {
				id: "immersiveengineering:tool",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "immersiveengineering"
				},
				Damage: 3 as short
			},

			rustic: {
				id: "rustic:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rustic"
				},
				Damage: 0 as short
			},

			draconicevolution: {
				id: "draconicevolution:info_tablet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "draconicevolution"
				},
				Damage: 0 as short
			},

			extrautils2: {
				id: "extrautils2:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "extrautils2"
				},
				Damage: 0 as short
			},

			thermalfoundation: {
				id: "thermalfoundation:tome_lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thermalfoundation"
				},
				Damage: 0 as short
			},

			bloodmagic: {
				id: "guideapi:bloodmagic-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bloodmagic"
				},
				Damage: 0 as short
			},

			cookingforblockheads: {
				id: "cookingforblockheads:recipe_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cookingforblockheads"
				},
				Damage: 1 as short
			},

			xnet: {
				id: "xnet:xnet_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "xnet"
				},
				Damage: 0 as short
			}
		}
	}
	
	);


//add the full book to JEI as it's own entry
mods.jei.JEI.addItem(fullTome);

//1 dirt = 1 tome
recipes.addShapeless(fullTome, [<minecraft:dirt>]);

// Inventory Starter
mods.initialinventory.InvHandler.addStartingItem(fullTome);

// Book Tooltip
	fullTome.addTooltip(format.aqua("The Tome is preloaded with all basic mod manuals and guides!"));
	mods.jei.JEI.addDescription(fullTome, "Yo dawg, we heard you like books...",
											  "All you need to do is put 1 dirt in a crafting table et voila, a brand new book if you lose this one!");