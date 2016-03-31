#Name: Mekanism.zs
#Author: Omglolbah

print("Initialising 'Mekanism.zs'...");
# ------------------------------------

#These are just plain gone
recipes.remove(<Mekanism:MachineBlock:11>); // Teleporter
recipes.remove(<Mekanism:BasicBlock:7>); // Teleporter Frame
recipes.remove(<Mekanism:CardboardBox>); // cardboard box is derp

#recipes.remove(<Mekanism:>);
#recipes.addShaped(<Mekanism:>, [[<>, <>, <> ],
#                                [<>, <> , <>],
#                                [<>, <> , <>]]);

recipes.remove(<MekanismGenerators:Reactor:1>); // Reactor Frame
recipes.addShaped(<MekanismGenerators:Reactor:1>,[[<EnderIO:blockIngotStorage:6> , <ThermalExpansion:Frame:8> , <EnderIO:blockIngotStorage:6> ],
                                                [<ThermalExpansion:Frame:8>    , <Mekanism:AtomicAlloy>     , <ThermalExpansion:Frame:8>    ],
                                                [<EnderIO:blockIngotStorage:6> , <ThermalExpansion:Frame:8> , <EnderIO:blockIngotStorage:6>]]);
recipes.remove(<Mekanism:MachineBlock:8>); // Metallurgic Infuser
recipes.addShaped(<Mekanism:MachineBlock:8>,   [[<minecraft:iron_ingot>, <minecraft:furnace>          , <minecraft:iron_ingot> ],
                                                [<minecraft:redstone>  , <Mekanism:BasicBlock:8>      , <minecraft:redstone>   ],
                                                [<minecraft:anvil>     , <ExtraUtilities:generator:1> , <minecraft:anvil>      ]]);
recipes.remove(<Mekanism:BasicBlock:8>);   // Steel Casing
recipes.addShaped(<Mekanism:BasicBlock:8>,     [[null             , <ore:ingotSteel>      , null            ],
                                                [<ore:ingotSteel> , <Mekanism:BasicBlock> , <ore:ingotSteel>],
                                                [null             , <ore:ingotSteel>      , null            ]]);
recipes.remove(<Mekanism:ControlCircuit:1>); // Advanced
recipes.addShaped(<Mekanism:ControlCircuit:1>, [[null                     , <Forestry:thermionicTubes:7> , null                     ],
                                                [<Mekanism:EnrichedAlloy> , <Mekanism:ControlCircuit>    , <Mekanism:EnrichedAlloy> ],
                                                [null                     , <Forestry:thermionicTubes:7> , null                     ]]);
recipes.remove(<Mekanism:ControlCircuit:2>); // Elite
recipes.addShaped(<Mekanism:ControlCircuit:2>, [[null                       , <Forestry:thermionicTubes:11> , null                       ],
                                                [<Mekanism:ReinforcedAlloy> , <Mekanism:ControlCircuit:1>   , <Mekanism:ReinforcedAlloy> ],
                                                [null                       , <Forestry:thermionicTubes:11> , null                       ]]);
recipes.remove(<Mekanism:ControlCircuit:3>); // Ultimate
recipes.addShaped(<Mekanism:ControlCircuit:3>, [[null                   , <Forestry:thermionicTubes:6> , null                   ],
                                                [<Mekanism:AtomicAlloy> , <Mekanism:ControlCircuit:2>  , <Mekanism:AtomicAlloy> ],
                                                [null                   , <Forestry:thermionicTubes:6> , null                   ]]);


#//Metallurgic Infuser
#//InfusionString, InputInfusion, InputStack, OutputStack //InfusionString = CARBON;TIN;DIAMOND;REDSTONE;FUNGI;BIO;OBSIDIAN
#mods.mekanism.Infuser.addRecipe("OBSIDIAN", 20, <minecraft:coal_block>, <minecraft:obsidian>);
#//OutputStack, InputStack, InfusionString
#mods.mekanism.Infuser.removeRecipe(<minecraft:mycelium>);

# Double the REDSTONE req for item
mods.mekanism.Infuser.removeRecipe(<Mekanism:EnrichedAlloy>);
mods.mekanism.Infuser.addRecipe("REDSTONE", 20, <minecraft:iron_ingot>, <Mekanism:EnrichedAlloy>);

# Double the DIAMOND req for item
mods.mekanism.Infuser.removeRecipe(<Mekanism:ReinforcedAlloy>);
mods.mekanism.Infuser.addRecipe("DIAMOND", 20, <Mekanism:EnrichedAlloy>, <Mekanism:ReinforcedAlloy>);

# Double the OBSIDIAN req for item
mods.mekanism.Infuser.removeRecipe(<Mekanism:AtomicAlloy>);
mods.mekanism.Infuser.addRecipe("OBSIDIAN", 20, <Mekanism:ReinforcedAlloy>, <Mekanism:AtomicAlloy>);

# Double the REDSTONE req for item
mods.mekanism.Infuser.removeRecipe(<Mekanism:ControlCircuit>);
mods.mekanism.Infuser.addRecipe("REDSTONE", 100, <Mekanism:Ingot:1>, <Mekanism:ControlCircuit>);

# Add bloodwood to the sawmill
mods.mekanism.Sawmill.addRecipe(<Natura:bloodwood:0>, <Natura:planks:4> * 6, <Mekanism:Sawdust>, 0.5);


# ------------------------------------
print("Initialised 'Mekanism.zs'");

