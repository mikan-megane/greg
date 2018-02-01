import mods.chisel.Groups;

# Aliases
var CHmarble = <chisel:marble>;
var chiselIron = <chisel:chisel>;
var chiselDiamond = <chisel:diamondChisel>;
var chiselObsidian = <chisel:obsidianChisel>;
var plateDiamond = <ore:plateDiamond>;
var obsidian = <minecraft:obsidian>;
var stoneMarble = <ore:stoneMarble>;

# Oredictionary Stuff
stoneMarble.add(CHmarble);

# Recipe Tweaks
recipes.remove(chiselDiamond);
recipes.addShaped(chiselDiamond, [
	[plateDiamond],
	[chiselIron]]);
recipes.remove(chiselObsidian);
recipes.addShaped(chiselObsidian, [
	[obsidian],
	[chiselIron]]);

# Recipe Fixes
furnace.remove(<chisel:concrete>);

# Chiseling fixes
<ore:cobblestone>.remove(<minecraft:mossy_cobblestone>);
<ore:chest>.remove(<minecraft:ender_chest>);

# Extra chisel groups
Groups.addGroup("basaltcobble");
Groups.addVariation("basaltcobble", <ProjRed|Exploration:projectred.exploration.stone:2>);
Groups.addVariation("basaltcobble", <IC2:blockBasalt>);
Groups.addVariation("concrete", <gregtech:gt.blockconcretes:8>);
Groups.addVariation("concrete", <gregtech:gt.blockconcretes:11>);
Groups.addVariation("marble", <gregtech:gt.blockstones>);
Groups.addVariation("marble", <gregtech:gt.blockstones:3>);
Groups.addVariation("marble", <gregtech:gt.blockstones:7>);
Groups.addVariation("thaumium", <gregtech:gt.blockmetal7:4>);
Groups.addGroup("rubyblock");
Groups.addVariation("rubyblock", <BiomesOPlenty:gemOre:3>);
Groups.addVariation("rubyblock", <ProjRed|Exploration:projectred.exploration.stone:5>);
Groups.addVariation("rubyblock", <gregtech:gt.blockgem2:11>);
Groups.addGroup("sapphireblock");
Groups.addVariation("sapphireblock", <BiomesOPlenty:gemOre:13>);
Groups.addVariation("sapphireblock", <gregtech:gt.blockgem2:12>);
Groups.addVariation("sapphireblock", <ProjRed|Exploration:projectred.exploration.stone:6>);
