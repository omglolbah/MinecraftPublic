#Name: QuarryPlus.zs
#Author: Omglolbah / Matakor

print("Initializing 'QuarryPlus.zs'...");

#These are just plain gone
recipes.remove(<QuarryPlus:MiningWellPlus>);
recipes.remove(<QuarryPlus:QuarryPlus>);
recipes.remove(<QuarryPlus:qpTool>);
recipes.remove(<QuarryPlus:yogSC>);
recipes.remove(<QuarryPlus:WorkbenchPlus>);
recipes.remove(<QuarryPlus:MarkerPlus>);
recipes.remove(<QuarryPlus:PumpPlus>);
recipes.remove(<QuarryPlus:magicmirror>);
recipes.remove(<QuarryPlus:magicmirror:1>);
recipes.remove(<QuarryPlus:magicmirror:2>);
recipes.remove(<QuarryPlus:qpArmor>);


recipes.remove(<QuarryPlus:EnchantMover>);
recipes.addShaped(<QuarryPlus:EnchantMover>, [[<ExtraUtilities:decorativeBlock1:8>, <MineFactoryReloaded:machine.1:15>, <ExtraUtilities:decorativeBlock1:8> ],
                                              [<Botania:pylon>                    , <minecraft:enchanting_table>      , <Botania:pylon>],
                                              [<ExtraUtilities:decorativeBlock1:8>, <minecraft:enchanted_book>        , <ExtraUtilities:decorativeBlock1:8> ]]);

recipes.remove(<QuarryPlus:RefineryPlus>);
recipes.addShaped(<QuarryPlus:RefineryPlus>, [[<IC2:blockAlloyGlass>             ,<Railcraft:machine.beta:14>      ,<IC2:blockAlloyGlass>],
                                              [<BuildCraft|Factory:refineryBlock>,<MineFactoryReloaded:machine.1:6>,<BuildCraft|Factory:refineryBlock>],
                                              [<IC2:blockAlloyGlass>             ,<Railcraft:machine.beta:14>      ,<IC2:blockAlloyGlass>]]);

recipes.remove(<QuarryPlus:qpTool:2>); // LiquidSelector
recipes.addShaped(<QuarryPlus:qpTool:2>, [[null,<minecraft:water_bucket>,null],
                                          [null,<minecraft:slime_ball>  ,null],
                                          [null,<minecraft:lava_bucket> ,null]]);

recipes.remove(<QuarryPlus:PlacerPlus>);
recipes.addShaped(<QuarryPlus:PlacerPlus>, [[<ThermalFoundation:material:136>,<BuildCraft|Core:diamondGearItem>,<ThermalFoundation:material:136>],
                                            [<IronChest:BlockIronChest>      ,<ThermalExpansion:Device:2>      ,<IronChest:BlockIronChest>],
                                            [<IronChest:BlockIronChest>      ,<EnderTech:endertech.exchanger:1>,<IronChest:BlockIronChest>]]);

recipes.remove(<QuarryPlus:LaserPlus>);
recipes.addShaped(<QuarryPlus:LaserPlus>, [[<ExtraUtilities:extractor_base:12> ,<Mekanism:MachineBlock2:14>    ,<ExtraUtilities:pipes:14>],
                                           [<MineFactoryReloaded:laserfocus:11>,<BuildCraft|Silicon:laserBlock>,<MineFactoryReloaded:laserfocus:11>],
                                           [<ExtraUtilities:pipes:14>          ,<Mekanism:MachineBlock2:14>    ,<ExtraUtilities:extractor_base:12>]]);

recipes.remove(<QuarryPlus:BreakerPlus>);
recipes.addShaped(<QuarryPlus:BreakerPlus>, [[<ThermalFoundation:material:136>,<BuildCraft|Core:diamondGearItem>,<ThermalFoundation:material:136>],
                                             [<ExtraUtilities:enderCollector> ,<ThermalExpansion:Device:2>      ,<ExtraUtilities:enderCollector>],
                                             [<IronChest:BlockIronChest>      ,<EnderTech:endertech.exchanger:1>,<IronChest:BlockIronChest>]]);

recipes.remove(<QuarryPlus:qpTool>); // StatusChecker
recipes.addShaped(<QuarryPlus:qpTool>, [[<IC2:itemFreq>               ,<IC2:itemFreq>               ,<IC2:itemFreq>],
                                        [<Mekanism:ControlCircuit>    ,<ComputerCraft:CC-Peripheral>,<Mekanism:ControlCircuit>],
                                        [<ThermalExpansion:augment:32>,<rftools:networkMonitorItem>  ,<ThermalExpansion:augment:32>]]);

print("Initialized 'QuarryPlus.zs'");



