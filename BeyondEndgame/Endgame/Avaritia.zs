#Name: Avaritia.zs
#Author: Samario

#mods.avaritia.ExtremeCrafting.addShapeless(output, ingredients);
#mods.avaritia.ExtremeCrafting.addShaped(output, ingredients);
#mods.avaritia.ExtremeCrafting.remove(output);
#mods.avaritia.Compressor.add(output, amount, input); //(amount is an int)
#mods.avaritia.Compressor.add(output, amount, input, false); //(if you want the recipe to use the scaling system)


print("Initialising 'Avaritia.zs'...");

# -- Crystal Studded Cosmic Neutronium Wand
var icap = <ThaumicTinkerer:kamiResource:4>;
var ppea = <Thaumcraft:ItemEldritchObject:3>;
var iing = <Avaritia:Resource:6>;
var acap = <ForbiddenMagic:WandCaps>;
var icat = <Avaritia:Resource:5>;
var vcap = <Thaumcraft:WandCap:7>;

mods.avaritia.ExtremeCrafting.remove(<Thaumcraft:WandCasting:9000>);
mods.thaumcraft.Infusion.addRecipe("RESEARCH", <ThaumicTinkerer:kamiResource:5>, [icap, ppea, iing, acap, icat, acap, iing, ppea, icap, ppea, iing, vcap, icat, vcap, iing, ppea, icap, ppea, iing, acap, icat, acap, iing, ppea, icap, ppea, iing, vcap, icat, vcap, iing, ppea], "aqua 128, ignis 128, terra 128, ordo 128, perditio 128, aer 128, terminus 16", <Thaumcraft:WandCasting:9000>.withTag({aqua:0, terra:0, ignis:0, cap: "matrix", rod:"infinity", ordo:0, perditio:0, aer:0}), 10);

# -------------------------
val inpick = <Avaritia:Infinity_Pickaxe>;
val oupick = <Avaritia:Infinity_Pickaxe>.withTag({ench: [{lvl: 20 as short, id: 35 as short}]});
val inswrd = <Avaritia:Infinity_Sword>;
# -------------------------
var iingot = <ore:ingotInfinity>;
var ningot = <ore:ingotCosmicNeutronium>;
var spower = <DraconicEvolution:draconicDistructionStaff>;
var icpick = <ThaumicTinkerer:ichorPickGem:1>;
var mostar = <ProjectE:item.pe_rm_morning_star>;
//var ningot = <Avaritia:Resource:4>;
# ------------------------

var rkatar = <ProjectE:item.pe_rm_katar>;
var dsword = <DraconicEvolution:draconicSword>;
var ictlys = <Avaritia:Resource:5>;
var cingot = <ore:ingotCrystalMatrix>;
# ------------------------
# Making World Breaker more annoying to craft
mods.avaritia.ExtremeCrafting.remove(<Avaritia:Infinity_Pickaxe>);
mods.avaritia.ExtremeCrafting.addShaped(oupick, [[null  , iingot, iingot, iingot, icpick, iingot, iingot, iingot, null  ],
                                                 [iingot, spower, iingot, iingot, mostar, iingot, iingot, spower, iingot],
                                                 [iingot, iingot, null  , ningot, ningot, ningot, null  , iingot, iingot],
                                                 [iingot, null  , null  , null  , ningot, null  , null  , null  , iingot],
                                                 [null  , null  , null  , null  , ningot, null  , null  , null  , null  ],
                                                 [null  , null  , null  , null  , ningot, null  , null  , null  , null  ],
                                                 [null  , null  , null  , null  , ningot, null  , null  , null  , null  ],
                                                 [null  , null  , null  , null  , ningot, null  , null  , null  , null  ],
                                                 [null  , null  , null  , ningot, iingot, ningot, null  , null  , null  ]]);


# and the Sword of the Cosmos too

mods.avaritia.ExtremeCrafting.remove(<Avaritia:Infinity_Sword>);

mods.avaritia.ExtremeCrafting.addShaped(inswrd, [[null  , null  , null  , null  , null  , null  , null  , iingot, iingot],
                         [null  , null  , null  , null  , null  , null  , iingot, dsword, iingot],
                         [null  , null  , null  , null  , null  , iingot, iingot, iingot, null  ],
                         [null  , cingot, cingot, iingot, iingot, dsword, iingot, null  , null  ],
                         [null  , cingot, cingot, iingot, iingot, iingot, null  , null  , null  ],
                         [null  , null  , cingot, rkatar, iingot, iingot, null  , null  , null  ],
                         [null  , null  , ningot, cingot, cingot, cingot, null  , null  , null  ],
                         [null  , ningot, null  , null  , cingot, cingot, null  , null  , null  ],
                         [ictlys, null  , null  , null  , null  , null  , null  , null  , null  ]]);
                         
