#Name: ProjectE.zs
#Author: Samario

print("Initialising 'ProjectE.zs'...");


import mods.projecte.PhiloStone;
import mods.projecte.KleinStar;

#addPhiloSmelting(output, input, (optional) fuel), fuel can be any item. Defaults to coal
#PhiloStone.addPhiloSmelting(<minecraft:stone_pickaxe>, <minecraft:iron_ingot>);
#PhiloStone.addPhiloSmelting(<minecraft:stone_pickaxe>, <minecraft:iron_ingot>, <minecraft:coal>);
#PhiloStone.addPhiloSmelting(<minecraft:stone_pickaxe>, <minecraft:iron_ingot>, <minecraft:stone>);

#removePhiloSmelting(output)
#PhiloStone.removePhiloSmelting(<minecraft:stone_pickaxe>);

#addWorldTransmutation(output,(optional)sneakOutput, input), two or three parameters
#PhiloStone.removeWorldTransmutation(<minecraft:sand>, <minecraft:cobblestone>, <minecraft:grass>);
#PhiloStone.addWorldTransmutation(<minecraft:obsidian>, <minecraft:cobblestone>, <minecraft:grass>);
# or
#PhiloStone.addWorldTransmutation(<minecraft:obsidian>, <minecraft:grass>);


#KleinStar.addShaped(<ProjectE:item.pe_klein_star:2>, [[<ProjectE:item.pe_klein_star:1>, <minecraft:dirt>, <ProjectE:item.pe_klein_star:1>], [<minecraft:dirt>, <ProjectE:item.pe_klein_star:1>, <minecraft:dirt>], [<ProjectE:item.pe_klein_star:1>, <minecraft:dirt>, <ProjectE:item.pe_klein_star:1>]]);
#KleinStar.addShapeless(<ProjectE:item.pe_klein_star:2>, [<ProjectE:item.pe_klein_star:1>, <ProjectE:item.pe_klein_star:1>]);

#KleinStar.removeRecipe(<ProjectE:item.pe_klein_star:2>);







# This removes ALL the smelting recipes with the philosophers stone!
recipes.removeShapeless(<minecraft:coal>          , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:coal:1>        , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
#recipes.removeShapeless(<minecraft:redstone>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:dye>           , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
#recipes.removeShapeless(<minecraft:iron_ingot>    , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
#recipes.removeShapeless(<minecraft:gold_ingot>    , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:bread>         , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:baked_potato>  , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:hardened_clay> , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
#recipes.removeShapeless(<minecraft:diamond>       , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<minecraft:diamond_ore>   , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:iron_ore>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:coal_ore>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:gold_ore>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:lapis_ore>     , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<minecraft:redstone_ore>  , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

#recipes.removeShapeless(<minecraft:gold_nugget>   , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<Forestry:ingotTin>       , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<Forestry:apatite>        , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);


recipes.removeShapeless(<BiomesOPlenty:gemOre:*>  , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<BiomesOPlenty:driedDirt> , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<DraconicEvolution:draconiumIngot> , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<aobd:oreIridium>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<aobd:oreSteel>                , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<ProjRed|Core:projectred.core.part:*> , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<MineFactoryReloaded:stone:0>  , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<MineFactoryReloaded:plastic.raw>  , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<BigReactors:BRIngot:*>        , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<IC2:itemIngot:0>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<IC2:itemIngot:1>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<IC2:itemIngot:2>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<IC2:itemIngot:3>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<IC2:itemIngot:5>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<IC2:blockOreUran>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<Mekanism:Ingot:*>             , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<Mekanism:OreBlock:*>          , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<Railcraft:nugget:*>           , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<Railcraft:ore:*>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

#recipes.removeShapeless(<TConstruct:materials:*>       , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<TConstruct:SpeedBlock:*>        , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<Botania:biomeStoneA:*>        , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<Botany:ceramic:*>             , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<EnderIO:itemMaterial:*>       , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<ImmersiveEngineering:metal:*> , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<ThermalFoundation:material:*> , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<ThermalFoundation:Ore:*>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<Thaumcraft:blockCustomOre:*>         , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<StevesCarts:ModuleComponents:22>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<StevesCarts:ModuleComponents:49>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
#recipes.removeShapeless(<StevesCarts:ModuleComponents:X>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
#recipes.removeShapeless(<StevesCarts:ModuleComponents:X>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<harvestcraft:grilledmushroomItem>    , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:bakedsweetpotatoItem>   , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:toastedsesameseedsItem> , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:coffeeItem>             , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:roastedchestnutItem>    , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:calamaricookedItem>     , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:toastItem>              , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:snailcookedItem>        , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:popcornItem>            , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:shrimpcookedItem>       , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);

recipes.removeShapeless(<harvestcraft:grilledeggplantItem>    , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:grilledasparagusItem>   , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:toastedcoconutItem>     , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:turtlecookedItem>       , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);
recipes.removeShapeless(<harvestcraft:octopuscookedItem>      , [<ProjectE:item.pe_philosophers_stone>, <minecraft:coal>]);


var noitem = null;
var eblock = <Botania:storage:2>;
var fstone = <Railcraft:firestone.raw>;
var dheart = <DraconicEvolution:dragonHeart>;
var dblock = <DraconicEvolution:draconium>;
var cblock = <DraconicEvolution:draconium:2>;
var fcfire = <Thaumcraft:FocusFire>;
var fclstr = <Thaumcraft:blockCrystal:1>;
var arelay = <DraconicEvolution:energyCrystal:1>;
var oclstr = <Thaumcraft:blockCrystal:4>;
var eclstr = <Thaumcraft:blockCrystal:5>;
var ppearl = <Thaumcraft:ItemEldritchObject:3>;
var replic = <IC2:blockMachine2:8>;
var matrix = <Thaumcraft:blockStoneDevice:2>;
var drcore = <DraconicEvolution:reactorCore>;
var btalis = <Botania:blackHoleTalisman>;
var rstone = <Railcraft:firestone.refined:*>;

var pstone = <ProjectE:item.pe_philosophers_stone>;

# Gate the philosopher's stone
recipes.remove(pstone);
mods.thaumcraft.Infusion.removeRecipe(pstone);
mods.avaritia.ExtremeCrafting.addShaped(pstone, [[noitem, noitem, eblock, fstone, dheart, fstone, eblock, noitem, noitem],
                                                 [noitem, eblock, fclstr, dblock, cblock, dblock, fclstr, eblock, noitem],
                                                 [eblock, fclstr, cblock, arelay, ppearl, arelay, cblock, fclstr, eblock],
                                                 [fcfire, dblock, arelay, oclstr, matrix, eclstr, arelay, dblock, fcfire],
                                                 [dheart, cblock, btalis, replic, drcore, replic, btalis, cblock, dheart],
                                                 [fcfire, dblock, arelay, eclstr, matrix, oclstr, arelay, dblock, fcfire],
                                                 [eblock, rstone, cblock, arelay, ppearl, arelay, cblock, rstone, eblock],
                                                 [noitem, eblock, rstone, dblock, cblock, dblock, rstone, eblock, noitem],
                                                 [noitem, noitem, eblock, rstone, dheart, rstone, eblock, noitem, noitem]]);

#Fix these recipes to avoid massive EMC exploiting! :p
recipes.remove(<ProjectE:item.pe_covalence_dust>);
recipes.remove(<ProjectE:item.pe_covalence_dust:1>);
recipes.remove(<ProjectE:item.pe_covalence_dust:2>);

#yank crucible recipes for the same
mods.thaumcraft.Crucible.removeRecipe(<ProjectE:item.pe_covalence_dust>);
#recipes.remove(<ProjectE:item.pe_covalence_dust>);
#recipes.remove(<ProjectE:item.pe_covalence_dust:1>);
#recipes.remove(<ProjectE:item.pe_covalence_dust:2>);

recipes.addShapeless(<ProjectE:item.pe_covalence_dust>  , [<ExtraUtilities:cobblestone_compressed>, <ProjectE:item.pe_fuel>]);
recipes.addShapeless(<ProjectE:item.pe_covalence_dust:1>, [<minecraft:iron_block>                 , <ProjectE:item.pe_fuel>]);
recipes.addShapeless(<ProjectE:item.pe_covalence_dust:2>, [<minecraft:diamond>                    , <ProjectE:item.pe_fuel>]);



#Removing nova cataclysm and replacing nova boom in recipes
recipes.remove(<ProjectE:nova_cataclysm>);

recipes.remove(<ProjectE:item.pe_destruction_catalyst>);
mods.thaumcraft.Infusion.removeRecipe(<ProjectE:item.pe_destruction_catalyst>);
recipes.addShaped(<ProjectE:item.pe_destruction_catalyst>,[[<ProjectE:item.pe_klein_star>, <ProjectE:item.pe_fuel:1>   , <ProjectE:item.pe_klein_star> ],
                                                           [<ProjectE:item.pe_fuel:1>    , <Thaumcraft:FocusExcavation>, <ProjectE:item.pe_fuel:1>     ],
                                                           [<ProjectE:item.pe_klein_star>, <ProjectE:item.pe_fuel:1>   , <ProjectE:item.pe_klein_star> ]]);

recipes.remove(<ProjectE:item.pe_hyperkinetic_lens>);
recipes.addShaped(<ProjectE:item.pe_hyperkinetic_lens>, [[<ProjectE:item.pe_covalence_dust:2>, <ProjectE:item.pe_covalence_dust:2>, <ProjectE:item.pe_covalence_dust:2>],
                                                         [<ProjectE:item.pe_matter>          , <ProjectE:item.pe_klein_star>      , <ProjectE:item.pe_matter>],
                                                         [<ProjectE:item.pe_covalence_dust:2>, <ProjectE:item.pe_covalence_dust:2>, <ProjectE:item.pe_covalence_dust:2>]]);

# Fuel recipes
recipes.remove(<ProjectE:item.pe_fuel>);
mods.thaumcraft.Crucible.removeRecipe(<ProjectE:item.pe_fuel>);
recipes.addShapeless(<ProjectE:item.pe_fuel> * 8, [<ProjectE:item.pe_philosophers_stone> , <ProjectE:item.pe_fuel:1> ]);
recipes.addShaped(<ProjectE:item.pe_fuel>,  [[<ProjectE:item.pe_philosophers_stone>, <minecraft:coal> , <minecraft:coal> ],
                                             [<minecraft:coal>                     , <minecraft:coal> , <minecraft:coal> ],
                                             [<minecraft:coal>                     , <minecraft:coal> , <minecraft:coal> ]]);
recipes.remove(<ProjectE:item.pe_fuel:1>);
mods.thaumcraft.Crucible.removeRecipe(<ProjectE:item.pe_fuel:1>);
recipes.addShapeless(<ProjectE:item.pe_fuel:1> * 8, [<ProjectE:item.pe_philosophers_stone> , <ProjectE:item.pe_fuel:2> ]);
recipes.addShaped(<ProjectE:item.pe_fuel:1>,[[<ProjectE:item.pe_philosophers_stone>, <ProjectE:item.pe_fuel> , <ProjectE:item.pe_fuel>    ],
                                             [<ProjectE:item.pe_fuel>                 , <ProjectE:item.pe_fuel> , <ProjectE:item.pe_fuel> ],
                                             [<ProjectE:item.pe_fuel>                 , <ProjectE:item.pe_fuel> , <ProjectE:item.pe_fuel> ]]);
recipes.remove(<ProjectE:item.pe_fuel:2>);
mods.thaumcraft.Crucible.removeRecipe(<ProjectE:item.pe_fuel:2>);
recipes.addShaped(<ProjectE:item.pe_fuel:2>,[[<ProjectE:item.pe_philosophers_stone> , <ProjectE:item.pe_fuel:1> , <ProjectE:item.pe_fuel:1>    ],
                                             [<ProjectE:item.pe_fuel:1>                , <ProjectE:item.pe_fuel:1> , <ProjectE:item.pe_fuel:1> ],
                                             [<ProjectE:item.pe_fuel:1>                , <ProjectE:item.pe_fuel:1> , <ProjectE:item.pe_fuel:1> ]]);

recipes.remove(<ProjectE:item.pe_matter>);
recipes.addShaped(<ProjectE:item.pe_matter>,[[<ProjectE:item.pe_fuel:2> , <ProjectE:item.pe_fuel:2>  , <ProjectE:item.pe_fuel:2> ],
                                             [<ProjectE:item.pe_fuel:2> , <ThermalExpansion:Frame:3> , <ProjectE:item.pe_fuel:2> ],
                                             [<ProjectE:item.pe_fuel:2> , <ProjectE:item.pe_fuel:2>  , <ProjectE:item.pe_fuel:2> ]]);
recipes.remove(<ProjectE:item.pe_matter:1>);
#recipes.addShaped(<ProjectE:item.pe_matter:1>,[[<ProjectE:item.pe_fuel:2> , <ProjectE:item.pe_fuel:2>  , <ProjectE:item.pe_fuel:2> ],
#                                               [<ProjectE:item.pe_matter> , <ProjectE:item.pe_matter>  , <ProjectE:item.pe_matter> ],
#                                               [<ProjectE:item.pe_fuel:2> , <ProjectE:item.pe_fuel:2>  , <ProjectE:item.pe_fuel:2> ]]);


print("Initialised 'ProjectE.zs'.");
