#======================================================
# Beyond Endgame Master MineTweaker configuration file
# 
# File must be last in MineTweaker load order!
#
# Author: omglolbah (BeyondEndgame@omglolbah.net)
#======================================================

#====================
# AdvancedSolars.zs
#====================

#add Oredict for circuits to recipe
recipes.remove(<AdvancedSolarPanel:BlockMolecularTransformer>);
recipes.addShaped(<AdvancedSolarPanel:BlockMolecularTransformer>, [[<IC2:blockMachine:12>, <IC2:blockElectric:6>                     , <IC2:blockMachine:12>],
                                                                   [<ore:circuitAdvanced>, <AdvancedSolarPanel:asp_crafting_items:12>, <ore:circuitAdvanced>],
                                                                   [<IC2:blockMachine:12>, <IC2:blockElectric:6>                     , <IC2:blockMachine:12>]]);
recipes.remove(<AdvancedSolarPanel:BlockAdvSolarPanel>);
recipes.addShaped(<AdvancedSolarPanel:BlockAdvSolarPanel>, [[<AdvancedSolarPanel:asp_crafting_items:5>, <AdvancedSolarPanel:asp_crafting_items:5>, <AdvancedSolarPanel:asp_crafting_items:5>],
                                                            [<IC2:itemPartAlloy>                      , <IC2:blockGenerator:3>                   , <IC2:itemPartAlloy>                      ],
                                                            [<ore:circuitAdvanced>                    , <AdvancedSolarPanel:asp_crafting_items:8>, <ore:circuitAdvanced>                    ]]);
recipes.remove(<AdvancedSolarPanel:BlockAdvSolarPanel:1>);
recipes.addShaped(<AdvancedSolarPanel:BlockAdvSolarPanel:1>, [[<IC2:itemPartCarbonPlate>, <minecraft:lapis_block>                  , <IC2:itemPartCarbonPlate>],
                                                              [<IC2:itemPartIridium>    , <AdvancedSolarPanel:BlockAdvSolarPanel>  , <IC2:itemPartIridium>    ],
                                                              [<ore:circuitAdvanced>    , <AdvancedSolarPanel:asp_crafting_items:3>, <ore:circuitAdvanced>    ]]);


#====================
# Botania.zs
#====================

# -- Terrasteel Armor
recipes.remove(<Botania:terrasteelHelm>);
recipes.addShaped(<Botania:terrasteelHelm>,  [[<Thaumcraft:WandRod> , <Botania:rune:4>         , <Thaumcraft:WandRod> ], 
                                              [<ore:ingotTerrasteel>, <Botania:manasteelHelm>  , <ore:ingotTerrasteel>],
                                              [null                 , <ore:ingotTerrasteel>    , null                 ]]);
recipes.remove(<Botania:terrasteelHelmReveal>);
recipes.addShapeless(<Botania:terrasteelHelmReveal>, [<Botania:terrasteelHelm>, <Thaumcraft:ItemGoggles>]);
recipes.addShaped(   <Botania:terrasteelHelmReveal>,[[<Thaumcraft:WandRod> , <Botania:rune:4>              , <Thaumcraft:WandRod> ], 
                                                     [<ore:ingotTerrasteel>, <Botania:manasteelHelmReveal> , <ore:ingotTerrasteel>],
                                                     [null                 , <ore:ingotTerrasteel>         , null                 ]]);

recipes.remove(<Botania:terrasteelChest>);
recipes.addShaped(<Botania:terrasteelChest>, [[<Thaumcraft:WandRod> , <Botania:rune:5>         , <Thaumcraft:WandRod> ], 
                                              [<ore:ingotTerrasteel>, <Botania:manasteelChest> , <ore:ingotTerrasteel>], 
                                              [null                 , <ore:ingotTerrasteel>    , null                 ]]);
recipes.remove(<Botania:terrasteelLegs>);
recipes.addShaped(<Botania:terrasteelLegs>,  [[<Thaumcraft:WandRod>  , <Botania:rune:6>        , <Thaumcraft:WandRod> ],
                                              [<ore:ingotTerrasteel> , <Botania:manasteelLegs> , <ore:ingotTerrasteel>], 
                                              [null                  , <ore:ingotTerrasteel>   , null                 ]]);
recipes.remove(<Botania:terrasteelBoots>);
recipes.addShaped(<Botania:terrasteelBoots>, [[<Thaumcraft:WandRod>  , <Botania:rune:7>        , <Thaumcraft:WandRod> ],
                                              [<ore:ingotTerrasteel> , <Botania:manasteelBoots>, <ore:ingotTerrasteel>],
                                              [null                  , <ore:ingotTerrasteel>   , null                 ]]);

# -- Elementium Armor
recipes.remove(<Botania:elementiumHelm>);
recipes.addShaped(<Botania:elementiumHelm>,  [[<Thaumcraft:WandRod:2>    , <Botania:rune:4>           , <Thaumcraft:WandRod:2>    ], 
                                              [<ore:ingotElvenElementium>, <Botania:manasteelHelm>    , <ore:ingotElvenElementium>],
                                              [null                      , <ore:ingotElvenElementium> , null                      ]]);
recipes.remove(<Botania:elementiumHelmReveal>);
recipes.addShapeless(<Botania:elementiumHelmReveal>, [<Botania:elementiumHelm>, <Thaumcraft:ItemGoggles>]);
recipes.addShaped(   <Botania:elementiumHelmReveal>,[[<Thaumcraft:WandRod:2>    , <Botania:rune:4>              , <Thaumcraft:WandRod:2>    ], 
                                                     [<ore:ingotElvenElementium>, <Botania:manasteelHelmReveal> , <ore:ingotElvenElementium>],
                                                     [null                      , <ore:ingotElvenElementium>    , null                      ]]);

recipes.remove(<Botania:elementiumChest>);
recipes.addShaped(<Botania:elementiumChest>, [[<Thaumcraft:WandRod:2>    , <Botania:rune:5>           , <Thaumcraft:WandRod:2>    ], 
                                              [<ore:ingotElvenElementium>, <Botania:manasteelChest>   , <ore:ingotElvenElementium>], 
                                              [null                      , <ore:ingotElvenElementium> , null                      ]]);
recipes.remove(<Botania:elementiumLegs>);
recipes.addShaped(<Botania:elementiumLegs>,  [[<Thaumcraft:WandRod:2>    , <Botania:rune:6>           , <Thaumcraft:WandRod:2>    ],
                                              [<ore:ingotElvenElementium>, <Botania:manasteelLegs>    , <ore:ingotElvenElementium>], 
                                              [null                      , <ore:ingotElvenElementium> , null                      ]]);
recipes.remove(<Botania:elementiumBoots>);
recipes.addShaped(<Botania:elementiumBoots>, [[<Thaumcraft:WandRod:2>    , <Botania:rune:7>           , <Thaumcraft:WandRod:2>    ],
                                              [<ore:ingotElvenElementium>, <Botania:manasteelBoots>   , <ore:ingotElvenElementium>],
                                              [null                      , <ore:ingotElvenElementium> , null                      ]]);

#Terra Shatterer
recipes.remove(<Botania:terraPick>);
recipes.addShaped(<Botania:terraPick>, [[<ore:ingotThaumium>   , <Botania:manaTablet:*> , <ore:ingotThaumium>  ],
                                        [<ore:ingotTerrasteel> , <Thaumcraft:WandRod>   , <ore:ingotTerrasteel>],
                                        [null                  , <Thaumcraft:WandRod>   , null                 ]]);

#Terra Blade
recipes.remove(<Botania:terraSword>);
recipes.addShaped(<Botania:terraSword>, [[null                 , null                  , <ore:ingotTerrasteel> ],
                                         [<ore:manaPearl>      , <ore:ingotTerrasteel> , null                  ],
                                         [<Thaumcraft:WandRod> , <ore:manaDiamond>     , null                  ]]);

# -- Gaia Guardian's Head
recipes.addShaped(<Botania:gaiaHead>, [[<ore:ingotInfinity>, <ore:gaiaIngot>, <ore:ingotInfinity>], [<ore:gaiaIngot>, <ore:skullPlayer>, <ore:gaiaIngot>], [<ore:ingotInfinity>, <ore:gaiaIngot>, <ore:ingotInfinity>]]);


#====================
###EnderIO.zs
#====================

#Add a recipe that allows opaque ducts for crafting item conduit
recipes.addShaped(<EnderIO:itemItemConduit> * 3, [[<ore:itemConduitBinder>, <ThermalDynamics:servo:4>, <ore:itemConduitBinder>], [<ThermalDynamics:ThermalDynamics_32:5>, <ThermalDynamics:ThermalDynamics_32:5>, <ThermalDynamics:ThermalDynamics_32:5>], [<ore:itemConduitBinder>, <ThermalDynamics:servo:4>, <ore:itemConduitBinder>]]);

#====================
# ExtraUtilities.zs
#====================
#Enable a custom-recipe EnderThermic Pump
recipes.addShaped(<ExtraUtilities:enderThermicPump>, [[<BuildCraft|Silicon:redstoneChipset:7>, <ThermalExpansion:pump>, <Forestry:thermionicTubes:9>], [<ThermalExpansion:Frame:11>, <MineFactoryReloaded:machine.2:1>, <IC2:blockElectric:2>], [<EnderIO:itemBasicCapacitor:2>, <IC2:blockMachine:8>, <EnderIO:itemBasicCapacitor:2>]]);


#====================
# ImmersiveEngineering.zs
#====================

#remove unused iron rod item
recipes.remove(<ImmersiveEngineering:material:14>);


#====================
###RFTools.zs
#====================

#Lower cost of machinebase (not frame, just the slab version)
recipes.remove(<rftools:machineBase>);
recipes.addShaped(<rftools:machineBase>, [[<ore:slabStone>, <ore:slabStone>, <ore:slabStone>], [<ore:slabStone>, <ThermalExpansion:Frame>, <ore:slabStone>], [<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]]);

#====================
# Thaumcraft.zs
#====================
# - Fuck all the imbued fire with a rusty fork.
mods.thaumcraft.Crucible.removeRecipe(<ThaumicTinkerer:fireEarth>);
mods.thaumcraft.Crucible.removeRecipe(<ThaumicTinkerer:fireOrder>);
mods.thaumcraft.Crucible.removeRecipe(<ThaumicTinkerer:fireChaos>);
mods.thaumcraft.Crucible.removeRecipe(<ThaumicTinkerer:fireAir>);
mods.thaumcraft.Crucible.removeRecipe(<ThaumicTinkerer:fireWater>);
mods.thaumcraft.Crucible.removeRecipe(<ThaumicTinkerer:fireFire>);



#====================
# ThermalExpansion.zs
#====================
recipes.remove(<ThermalExpansion:Cell:2>);
recipes.addShaped(<ThermalExpansion:Cell:2>, [[null, <ore:circuitBasic>, null], [<Forestry:thermionicTubes:2>, <ThermalExpansion:Frame:5>, <Forestry:thermionicTubes:2>], [null, <ThermalExpansion:material:3>, null]]);

var lumium = <ThermalFoundation:Storage:11>;
var galga = <StevesCarts:BlockMetalStorage:2>;
var RTG = <IC2:itemRTGPellet>;
var resfr = <ThermalExpansion:Frame:9>;
var DEcap = <DraconicEvolution:draconiumFluxCapacitor:1>;
var qsol = <AdvancedSolarPanel:BlockAdvSolarPanel:3>;

mods.avaritia.ExtremeCrafting.remove(<ThermalExpansion:Cell>);
mods.avaritia.ExtremeCrafting.addShaped(<ThermalExpansion:Cell>, [[lumium, galga, galga, galga, galga, galga, galga, galga, lumium],
                                                                  [galga , RTG  , resfr, resfr, RTG  , resfr, resfr, RTG  , galga ],
                                                                  [galga , resfr, DEcap, DEcap, DEcap, DEcap, DEcap, resfr, galga ],
                                                                  [galga , resfr, DEcap, qsol , qsol , qsol , DEcap, resfr, galga ],
                                                                  [galga , RTG  , DEcap, qsol , qsol , qsol , DEcap, RTG  , galga ],
                                                                  [galga , resfr, DEcap, qsol , qsol , qsol , DEcap, resfr, galga ],
                                                                  [galga , resfr, DEcap, DEcap, DEcap, DEcap, DEcap, resfr, galga ],
                                                                  [galga , RTG  , resfr, resfr, RTG  , resfr, resfr, RTG  , galga ],
                                                                  [lumium, galga, galga, galga, galga, galga, galga, galga, lumium]]);
 
#====================
# TinkersConstruct.zs
#====================
recipes.addShapeless(<TConstruct:CraftingSlab:5>, [<TConstruct:ToolForgeBlock>]);

#====================
# Witchery.zs
#====================
recipes.remove(<witchery:ingredient:153>);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedsartichoke>, <ore:dyeCyan>, <witchery:seedsmandrake>], [<ore:dyeCyan>, <minecraft:potion>, <ore:dyeCyan>], [<witchery:seedsbelladonna>, <ore:dyeCyan>, <witchery:seedssnowbell>]]);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedssnowbell>, <ore:dyeCyan>, <witchery:seedsartichoke>], [<ore:dyeCyan>, <minecraft:potion>, <ore:dyeCyan>], [<witchery:seedsmandrake>, <ore:dyeCyan>, <witchery:seedsbelladonna>]]);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedsbelladonna>, <ore:dyeCyan>, <witchery:seedssnowbell>], [<ore:dyeCyan>, <minecraft:potion>, <ore:dyeCyan>], [<witchery:seedsartichoke>, <ore:dyeCyan>, <witchery:seedsmandrake>]]);
recipes.addShaped(<witchery:ingredient:153>, [[<witchery:seedsmandrake>, <ore:dyeCyan>, <witchery:seedsbelladonna>], [<ore:dyeCyan>, <minecraft:potion>, <ore:dyeCyan>], [<witchery:seedssnowbell>, <ore:dyeCyan>, <witchery:seedsartichoke>]]);










