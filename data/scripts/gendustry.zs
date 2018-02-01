// --- Created by BeyondReality Team and EconBrony --- 

import mods.gregtech.Autoclave;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.FluidSolidifier;

# Aliases
var apiaryIndustrial = <gendustry:IndustrialApiary>;
var beeReceptacle = <gendustry:BeeReceptacle>;
var blockRedstone = <ore:blockRedstone>;
var capsuleWaxBiomass = <Forestry:waxCapsuleBiomass>;
var chipNAND = <gregtech:gt.metaitem.01:32700>;
var diamond = <minecraft:diamond>;
var dropHoneyRed = <gendustry:HoneyDrop:11>;
var dustDiamond = <ore:dustDiamond>;
var extractor = <gendustry:Extractor>;
var frameCobalt = <gregtech:gt.blockmachines:4129>;
var frameUpgrade = <gendustry:UpgradeFrame>;
var gearAluminium = <ore:gearAluminium>;
var glassPane = <ore:paneGlass>;
var hullMachineHV = <gregtech:gt.blockmachines:13>;
var imprinter = <gendustry:Imprinter>;
var ingotAluminium = <ore:ingotAluminium>;
var ingotGold = <ore:ingotGold>;
var ingotTin = <ore:ingotTin>;
var labware = <gendustry:Labware>;
var liquifier = <gendustry:Liquifier>;
var modulePower = <gendustry:PowerModule>;
var mutagen = <gendustry:HoneyComb:141>;
var mutagenProducer = <gendustry:MutagenProducer>;
var mutatron = <gendustry:Mutatron>;
var pipeSmallBronze = <gregtech:gt.blockmachines:5121>;
var plateAluminium = <ore:plateAluminium>;
var pressurePlateLightWeighted = <minecraft:light_weighted_pressure_plate>;
var processorGenetics = <gendustry:GeneticsProcessor>;
var replicator = <gendustry:Replicator>;
var royalJelly = <Forestry:royalJelly>;
var scoop = <ore:craftingToolScoop>;
var scoopator = <gendustry:IndustrialScoop:100>;
var swarmer = <Forestry:alveary:2>;
var tankMutagen = <gendustry:MutagenTank>;
var tin = <ore:ingotTin>;
var transposer = <gendustry:Transposer>;
var uranium238 = <IC2:itemUran238>;
var biomass = <liquid:ic2biomass>;
var combIrradiated = <Forestry:beeCombs:9>;
var nuggetmold = <gregtech:gt.metaitem.01:32309>;
var ingotmold = <gregtech:gt.metaitem.01:32306>;
var platemold = <gregtech:gt.metaitem.01:32301>;
var smgearmold = <gregtech:gt.metaitem.01:32317>;
var gearmold = <gregtech:gt.metaitem.01:32303>;
var blockmold = <gregtech:gt.metaitem.01:32308>;
var ballmold = <gregtech:gt.metaitem.01:32307>;
var magicapiary = <MagicBees:magicApiary>;



# Recipes Tweaks
recipes.remove(magicapiary);
recipes.remove(labware);
recipes.addShaped(labware, [
    [glassPane, null, glassPane],
    [glassPane, <minecraft:diamond_block>, glassPane],
    [glassPane, <EnderIO:blockFusedQuartz>, glassPane]]);
recipes.remove(scoopator);
recipes.addShaped(scoopator, [
    [null, null, scoop.noReturn()],
    [null, diamond, null],
    [modulePower, null, null]]);
recipes.addShaped(dropHoneyRed, [
    [royalJelly, royalJelly, royalJelly],
    [royalJelly, uranium238, royalJelly],
    [royalJelly, royalJelly, royalJelly]]);
recipes.addShaped(mutagen, [
    [dropHoneyRed, dropHoneyRed, dropHoneyRed],
    [dropHoneyRed, capsuleWaxBiomass, dropHoneyRed],
    [dropHoneyRed, dropHoneyRed, dropHoneyRed]]);
Autoclave.addRecipe(mutagen, dropHoneyRed * 6, biomass * 3000, 10000, 300, 24);
ChemicalReactor.addRecipe(mutagen, null, dropHoneyRed * 5, combIrradiated * 4, biomass * 2000, 840);
recipes.remove(frameUpgrade);
recipes.addShaped(frameUpgrade, [
    [ingotAluminium, ingotGold, ingotAluminium],
    [blockRedstone, frameCobalt, blockRedstone],
    [ingotAluminium, ingotGold, ingotAluminium]]);
recipes.remove(modulePower);
recipes.addShaped(modulePower, [
    [gearAluminium, ingotGold, gearAluminium],
    [chipNAND, blockRedstone, chipNAND],
    [gearAluminium, ingotGold, gearAluminium]]);
recipes.remove(tankMutagen);
recipes.addShaped(tankMutagen, [
    [plateAluminium,glassPane, plateAluminium],
    [plateAluminium,glassPane, plateAluminium],
    [plateAluminium,glassPane, plateAluminium]]);
recipes.remove(beeReceptacle);	
recipes.addShaped(beeReceptacle, [
    [ingotAluminium, ingotAluminium, ingotAluminium],
    [ingotAluminium, glassPane, ingotAluminium],
    [blockRedstone, pressurePlateLightWeighted, blockRedstone]]);
recipes.remove(mutagenProducer);
recipes.addShaped(mutagenProducer, [
    [plateAluminium, pipeSmallBronze, plateAluminium],
    [modulePower, hullMachineHV, modulePower],
    [gearAluminium, tankMutagen, gearAluminium]]);
recipes.remove(apiaryIndustrial);	
recipes.addShaped(apiaryIndustrial, [
    [swarmer, processorGenetics, swarmer],
    [modulePower, hullMachineHV, modulePower],
    [gearAluminium, beeReceptacle, gearAluminium]]);
recipes.remove(imprinter);
recipes.addShaped(imprinter, [
    [gearAluminium, processorGenetics, gearAluminium],
    [beeReceptacle, hullMachineHV, beeReceptacle],
    [gearAluminium, modulePower, gearAluminium]]);
recipes.remove(liquifier);
recipes.addShaped(liquifier, [
    [gearAluminium, tankMutagen, gearAluminium],
    [ingotAluminium, hullMachineHV, gearAluminium],
    [gearAluminium, modulePower, gearAluminium]]);
recipes.remove(extractor);
recipes.addShaped(extractor, [
    [gearAluminium, tankMutagen, gearAluminium],
    [processorGenetics, hullMachineHV, processorGenetics],
    [gearAluminium, modulePower, gearAluminium]]);
recipes.remove(transposer);
recipes.addShaped(transposer, [
    [pipeSmallBronze, tankMutagen, pipeSmallBronze],
    [processorGenetics, hullMachineHV, processorGenetics],
    [gearAluminium, modulePower, gearAluminium]]);
recipes.remove(replicator);
recipes.addShaped(replicator, [
    [gearAluminium, processorGenetics, gearAluminium],
    [modulePower, hullMachineHV, modulePower],
    [gearAluminium, processorGenetics, gearAluminium]]);
recipes.remove(mutatron);
recipes.addShaped(mutatron, [
    [beeReceptacle, processorGenetics, gearAluminium],
    [modulePower, hullMachineHV, beeReceptacle],
    [beeReceptacle, tankMutagen, gearAluminium]]);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9019>, nuggetmold * 0, <liquid:molten.aluminium> * 16, 200, 64);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11019>, ingotmold * 0, <liquid:molten.aluminium> * 144, 220, 96);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17019>, platemold * 0, <liquid:molten.aluminium> * 144, 220, 96);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:20019>, smgearmold * 0, <liquid:molten.aluminium> * 144, 220, 96);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:31019>, gearmold * 0, <liquid:molten.aluminium> * 576, 240, 120);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal1:1>, blockmold * 0, <liquid:molten.aluminium> * 1296, 300, 120);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2019>, ballmold * 0, <liquid:molten.aluminium> * 144, 500, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9030>, nuggetmold * 0, <liquid:molten.chrome> * 16, 200, 64);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11030>, ingotmold * 0, <liquid:molten.chrome> * 144, 220, 96);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17030>, platemold * 0, <liquid:molten.chrome> * 144, 220, 96);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal2:3>, blockmold * 0, <liquid:molten.chrome> * 1296, 300, 120);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2030>, ballmold * 0, <liquid:molten.chrome> * 144, 500, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9312>, nuggetmold * 0, <liquid:molten.kanthal> * 16, 200, 64);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11312>, ingotmold * 0, <liquid:molten.kanthal> * 144, 220, 96);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17312>, platemold * 0, <liquid:molten.kanthal> * 144, 220, 96);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal3:15>, blockmold * 0, <liquid:molten.kanthal> * 1296, 300, 120);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2312>, ballmold * 0, <liquid:molten.kanthal> * 144, 500, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9028>, nuggetmold * 0, <liquid:molten.titanium> * 16, 200, 256);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11028>, ingotmold * 0, <liquid:molten.titanium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17028>, platemold * 0, <liquid:molten.titanium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:20028>, smgearmold * 0, <liquid:molten.titanium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:31028>, gearmold * 0, <liquid:molten.titanium> * 576, 240, 500);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal7:9>, blockmold * 0, <liquid:molten.titanium> * 1296, 300, 500);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2028>, ballmold * 0, <liquid:molten.titanium> * 144, 1000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9372>, nuggetmold * 0, <liquid:molten.hssg> * 16, 200, 256);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11372>, ingotmold * 0, <liquid:molten.hssg> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17372>, platemold * 0, <liquid:molten.hssg> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:20372>, smgearmold * 0, <liquid:molten.hssg> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:31372>, gearmold * 0, <liquid:molten.hssg> * 576, 240, 500);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal8:10>, blockmold * 0, <liquid:molten.hssg> * 1296, 300, 500);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2372>, ballmold * 0, <liquid:molten.hssg> * 144, 1000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9373>, nuggetmold * 0, <liquid:molten.hsse> * 16, 200, 256);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11373>, ingotmold * 0, <liquid:molten.hsse> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17373>, platemold * 0, <liquid:molten.hsse> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:20373>, smgearmold * 0, <liquid:molten.hsse> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.02:31372>, gearmold * 0, <liquid:molten.hsse> * 576, 240, 500);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal8:9>, blockmold * 0, <liquid:molten.hsse> * 1296, 300, 500);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2373>, ballmold * 0, <liquid:molten.hsse> * 144, 1000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9321>, nuggetmold * 0, <liquid:molten.enderium> * 16, 200, 256);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11321>, ingotmold * 0, <liquid:molten.enderium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17321>, platemold * 0, <liquid:molten.enderium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal3:1>, blockmold * 0, <liquid:molten.enderium> * 1296, 300, 500);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2321>, ballmold * 0, <liquid:molten.enderium> * 144, 1000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9067>, nuggetmold * 0, <liquid:molten.neodymium> * 16, 200, 256);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11067>, ingotmold * 0, <liquid:molten.neodymium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17067>, platemold * 0, <liquid:molten.neodymium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal5>, blockmold * 0, <liquid:molten.neodymium> * 1296, 300, 500);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2067>, ballmold * 0, <liquid:molten.neodymium> * 144, 1000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9083>, nuggetmold * 0, <liquid:molten.osmium> * 16, 200, 256);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11083>, ingotmold * 0, <liquid:molten.osmium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17083>, platemold * 0, <liquid:molten.osmium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal5:9>, blockmold * 0, <liquid:molten.osmium> * 1296, 300, 500);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2083>, ballmold * 0, <liquid:molten.osmium> * 144, 1000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9084>, nuggetmold * 0, <liquid:molten.iridium> * 16, 200, 256);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11084>, ingotmold * 0, <liquid:molten.iridium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17084>, platemold * 0, <liquid:molten.iridium> * 144, 220, 384);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal3:12>, blockmold * 0, <liquid:molten.iridium> * 1296, 300, 500);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2084>, ballmold * 0, <liquid:molten.iridium> * 144, 1000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9317>, nuggetmold * 0, <liquid:molten.osmiridium> * 16, 200, 512);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11317>, ingotmold * 0, <liquid:molten.osmiridium> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17317>, platemold * 0, <liquid:molten.osmiridium> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal5:8>, blockmold * 0, <liquid:molten.osmiridium> * 1296, 300, 1900);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2317>, ballmold * 0, <liquid:molten.osmiridium> * 144, 2000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9324>, nuggetmold * 0, <liquid:molten.naquadah> * 16, 200, 512);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11324>, ingotmold * 0, <liquid:molten.naquadah> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17324>, platemold * 0, <liquid:molten.naquadah> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal4:12>, blockmold * 0, <liquid:molten.naquadah> * 1296, 300, 1900);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2324>, ballmold * 0, <liquid:molten.naquadah> * 144, 2000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9081>, nuggetmold * 0, <liquid:molten.tungsten> * 16, 200, 512);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11081>, ingotmold * 0, <liquid:molten.tungsten> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17081>, platemold * 0, <liquid:molten.tungsten> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal7:11>, blockmold * 0, <liquid:molten.tungsten> * 1296, 300, 1900);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2081>, ballmold * 0, <liquid:molten.tungsten> * 144, 2000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9316>, nuggetmold * 0, <liquid:molten.tungstensteel> * 16, 200, 512);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11316>, ingotmold * 0, <liquid:molten.tungstensteel> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17316>, platemold * 0, <liquid:molten.tungstensteel> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal7:12>, blockmold * 0, <liquid:molten.tungstensteel> * 1296, 300, 1900);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2316>, ballmold * 0, <liquid:molten.tungstensteel> * 144, 2000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9370>, nuggetmold * 0, <liquid:molten.tungstencarbide> * 16, 200, 512);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11370>, ingotmold * 0, <liquid:molten.tungstencarbide> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17370>, platemold * 0, <liquid:molten.tungstencarbide> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal8:7>, blockmold * 0, <liquid:molten.tungstencarbide> * 1296, 300, 1900);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2370>, ballmold * 0, <liquid:molten.tungstencarbide> * 144, 2000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9374>, nuggetmold * 0, <liquid:molten.hsss> * 16, 200, 512);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11374>, ingotmold * 0, <liquid:molten.hsss> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17374>, platemold * 0, <liquid:molten.hsss> * 144, 220, 1024);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal8:11>, blockmold * 0, <liquid:molten.hsss> * 1296, 300, 1900);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2374>, ballmold * 0, <liquid:molten.hsss> * 144, 2000, 30);

FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:9325>, nuggetmold * 0, <liquid:molten.naquadahalloy> * 16, 200, 2048);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:11325>, ingotmold * 0, <liquid:molten.naquadahalloy> * 144, 220, 3056);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:17325>, platemold * 0, <liquid:molten.naquadahalloy> * 144, 220, 3056);
FluidSolidifier.addRecipe(<gregtech:gt.blockmetal4:13>, blockmold * 0, <liquid:molten.naquadahalloy> * 1296, 300, 3056);
FluidSolidifier.addRecipe(<gregtech:gt.metaitem.01:2325>, ballmold * 0, <liquid:molten.naquadahalloy> * 144, 1400, 4000);






