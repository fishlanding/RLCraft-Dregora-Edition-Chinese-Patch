import crafttweaker.item.IItemStack;

print("Dregora Recipe Script starting!");

//=================================
//Normal recipe adjustments
//=================================

recipes.remove(<biomesoplenty:gem_block:1>);
// Re-add Diomesoplenty ruby
recipes.addShaped("dregora53",<biomesoplenty:gem_block:1>,
 [[<biomesoplenty:gem:1>,<biomesoplenty:gem:1>,<biomesoplenty:gem:1>],
  [<biomesoplenty:gem:1>,<biomesoplenty:gem:1>,<biomesoplenty:gem:1>],
  [<biomesoplenty:gem:1>,<biomesoplenty:gem:1>,<biomesoplenty:gem:1>]]);

recipes.addShaped("saw_bookshelf",<minecraft:book>*3,
[[<ore:toolSaw>,<ore:bookshelf>]]);


<variedcommodities:mana>.addTooltip("§6A 用作魔杖古代动力源的宝贵资源");

<variedcommodities:satchel>.displayName = "钱包";
<variedcommodities:satchel>.addTooltip("§6装满古币的钱包!");

recipes.addShaped("dregora54",<variedcommodities:satchel>,
 [[<minecraft:leather>,<contenttweaker:coin_pile>,<minecraft:leather>],
  [<contenttweaker:coin_pile>,<contenttweaker:coin_pile>,<contenttweaker:coin_pile>],
  [<contenttweaker:coin_pile>,<contenttweaker:coin_pile>,<contenttweaker:coin_pile>]]);

recipes.addShaped("dregora51",<contenttweaker:coin_pile>,
 [[<variedcommodities:coin_gold>,<variedcommodities:coin_gold>,<variedcommodities:coin_gold>],
  [<variedcommodities:coin_gold>,<variedcommodities:coin_gold>,<variedcommodities:coin_gold>],
  [<variedcommodities:coin_gold>,<variedcommodities:coin_gold>,<variedcommodities:coin_gold>]]);

recipes.addShapeless("dregora52",<variedcommodities:coin_gold> * 63,[<variedcommodities:satchel>]);
recipes.addShapeless("dregora55",<variedcommodities:coin_gold> * 9,[<contenttweaker:coin_pile>]);

// Removes recipe xp bug (level up)
recipes.remove(<variedcommodities:wooden_dagger_reversed>);
recipes.remove(<variedcommodities:stone_dagger_reversed>);
recipes.remove(<variedcommodities:iron_dagger_reversed>);
recipes.remove(<variedcommodities:golden_dagger_reversed>);
recipes.remove(<variedcommodities:diamond_dagger_reversed>);
recipes.remove(<variedcommodities:bronze_dagger_reversed>);
recipes.remove(<variedcommodities:emerald_dagger_reversed>);
recipes.remove(<variedcommodities:demonic_dagger_reversed>);
recipes.remove(<variedcommodities:mithril_dagger_reversed>);
recipes.remove(<variedcommodities:frost_dagger_reversed>);
recipes.remove(<variedcommodities:wooden_dagger>);
recipes.remove(<variedcommodities:stone_dagger>);
recipes.remove(<variedcommodities:iron_dagger>);
recipes.remove(<variedcommodities:golden_dagger>);
recipes.remove(<variedcommodities:diamond_dagger>);
recipes.remove(<variedcommodities:bronze_dagger>);
recipes.remove(<variedcommodities:emerald_dagger>);
recipes.remove(<variedcommodities:demonic_dagger>);
recipes.remove(<variedcommodities:mithril_dagger>);
recipes.remove(<variedcommodities:frost_dagger>);

// Remove Bread recipe
recipes.removeByRecipeName("minecraft:bread");

// Remove Enchantment table & add wither skulls to it:
recipes.remove(<minecraft:enchanting_table>);

// Re-add Enchantment table
recipes.addShaped("dregora24",<minecraft:enchanting_table>,
 [[null,<minecraft:writable_book:*>,null],
  [<minecraft:diamond>,<minecraft:skull:1>,<minecraft:diamond>],
  [<minecraft:obsidian>,<minecraft:obsidian>,<minecraft:obsidian>]]);

// add reinforced block item tooltip
<contenttweaker:iron_plate_reinforced>.addTooltip("§e防腐");
<contenttweaker:iron_plate_slab_reinforced>.addTooltip("§e防腐");
<contentcreator:iron_plate_slab_reinforced>.addTooltip("§e防腐");
<contentcreator:iron_plate_stairs_reinforced>.addTooltip("§e防腐");
<contenttweaker:iron_plate_rust_reinforced>.addTooltip("§e防腐");

//=================================
//BLOCK HARDNESS ADJUSTERS
//=================================

//Change blockhardness Blocks in relation to SRParasites
var BarrierHard as IItemStack = <dimstack:bedrock>;
BarrierHard.hardness = 30;

var AshenStoneHard as IItemStack = <lycanitesmobs:ashenstone>;
AshenStoneHard.hardness = 30;

var LatticeHard as IItemStack = <rustic:iron_lattice>;
LatticeHard.hardness = 20;

var GrateHard as IItemStack = <quark:grate>;
GrateHard.hardness = 10;

var IronLadderHard as IItemStack = <quark:iron_ladder>;
IronLadderHard.hardness = 5;

var ContentCreatorSlab as IItemStack = <contentcreator:iron_plate_slab_reinforced>;
ContentCreatorSlab.hardness = 30;

var ContentCreatorStairs as IItemStack = <contentcreator:iron_plate_stairs_reinforced>;
ContentCreatorStairs.hardness = 30;

var ContentTweakersDoubleSlab as IItemStack = <contenttweaker:iron_plate_slab_reinforced>;
ContentTweakersDoubleSlab.hardness = 30;

var LushPolishedHard as IItemStack = <lycanitesmobs:lushstonepolished>;
LushPolishedHard.hardness = 30;

var BasaltHard as IItemStack = <quark:basalt_wall>;
BasaltHard.hardness = 10;

var DimstackHard as IItemStack = <dimstack:bedrock>;
BasaltHard.hardness = 50;

//=================================
//DREGORARL ContentTweaker new item recipes
//=================================

// Add a recipe for the reinforced iron plates
recipes.addShaped("dregora48",<contenttweaker:iron_plate_reinforced>,
 [[<minecraft:iron_bars>,<minecraft:iron_bars>,<minecraft:iron_bars>],
  [<minecraft:iron_bars>,<quark:iron_plate>,<minecraft:iron_bars>],
  [<minecraft:iron_bars>,<minecraft:iron_bars>,<minecraft:iron_bars>]]);

// Add a recipe for the reinforced rusty iron plates
recipes.addShaped("dregora47",<contenttweaker:iron_plate_rust_reinforced> * 8,
 [[<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>],
  [<quark:iron_plate>,<minecraft:water_bucket>,<quark:iron_plate>],
  [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>]]);

// Add a recipe for the reinforced slabs
recipes.addShaped("dregora49",<contentcreator:iron_plate_slab_reinforced> * 6,
 [[null,null,null],
  [<contenttweaker:iron_plate_reinforced>,<contenttweaker:iron_plate_reinforced>,<contenttweaker:iron_plate_reinforced>],
  [null,null,null]]);

// Add a recipe for the reinforced stairs
recipes.addShaped("dregora50",<contentcreator:iron_plate_stairs_reinforced> * 8,
 [[<contenttweaker:iron_plate_reinforced>,null,null],
  [<contenttweaker:iron_plate_reinforced>,<contenttweaker:iron_plate_reinforced>,null],
  [<contenttweaker:iron_plate_reinforced>,<contenttweaker:iron_plate_reinforced>,<contenttweaker:iron_plate_reinforced>]]);

//=================================
//QUARK HAT ADD TOOLTIPS
//=================================

<quark:witch_hat>.addTooltip("§8 使女巫友好并消除魅影诅咒");
//<quark:pirate_hat>.addTooltip("§8 赋予永久掠夺 I 效果");
<quark:archaeologist_hat>.addTooltip("§8 增加 25%矿石掉落几率。");

//=================================
//FISH UNDEAD RECIPES & NAME CHANGES
//=================================

// Removed Recipes

mods.inspirations.Cauldron.removeBrewingRecipe("mod_lavacow:infestation");
mods.inspirations.Cauldron.removeBrewingRecipe("mod_lavacow:long_infestation");
mods.inspirations.Cauldron.removeBrewingRecipe("mod_lavacow:strong_infestation");

mods.inspirations.Cauldron.removeBrewingRecipe("mod_lavacow:strong_fragile");
mods.inspirations.Cauldron.removeBrewingRecipe("mod_lavacow:long_fragile");
mods.inspirations.Cauldron.removeBrewingRecipe("mod_lavacow:fragile");


recipes.remove(<minecraft:potion>.withTag({Potion: "mod_lavacow:fragile"}));
recipes.remove(<minecraft:potion>.withTag({Potion: "mod_lavacow:strong_fragile"}));
recipes.remove(<minecraft:potion>.withTag({Potion: "mod_lavacow:long_fragile"}));

recipes.remove(<minecraft:potion>.withTag({Potion: "mod_lavacow:infestation"}));
recipes.remove(<minecraft:potion>.withTag({Potion: "mod_lavacow:strong_infestation"}));
recipes.remove(<minecraft:potion>.withTag({Potion: "mod_lavacow:long_infestation"}));

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item> );
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item:1> );
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item:2> );
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:infestation"}), <minecraft:glowstone_dust>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:infestation"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item:1>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item:2>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:infestation"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item:1>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item:2>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:strong_infestation"}), <minecraft:glowstone_dust>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:strong_infestation"}), <minecraft:gunpowder>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:infestation"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item:1>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item:2>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:infestation"}), <minecraft:dragon_breath>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item:1>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}), <mod_lavacow:parasite_item:2>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:long_infestation"}), <minecraft:dragon_breath> );
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "mod_lavacow:infestation"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "mod_lavacow:infestation"}), <minecraft:glowstone_dust>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item:1>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:slowness"}), <mod_lavacow:parasite_item:2>);

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:strong_fragile"})); //Removes potion of mooten lava
brewing.removeRecipe(<mod_lavacow:potion_of_mooten_lava>); //Removes potion of mooten lava
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <mod_lavacow:hatred_shard>); //Removes DeathTouch
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:glowstone>); //Removes DeathTouch
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:gunpowder>); //Removes DeathTouch
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}), <mod_lavacow:hatred_shard>); //Removes DeathTouch Splash
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:gunpowder>); //Removes DeathTouch Splash
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:glowstone>); //Removes DeathTouch Splash
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:strong_fragile"}), <minecraft:gunpowder>); //Removes DeathTouch Splash
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:redstone>); //Removes DeathTouch Splash
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "mod_lavacow:long_fragile"}), <minecraft:gunpowder>); //Removes DeathTouch Splash
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}), <mod_lavacow:hatred_shard>); //Removes DeathTouch Lingering 2
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:dragon_breath>); //Removes DeathTouch Lingering 2
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:glowstone>); //Removes DeathTouch Lingering
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:strong_fragile"}), <minecraft:dragon_breath>); //Removes DeathTouch Lingering
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "mod_lavacow:fragile"}), <minecraft:redstone>); //Removes DeathTouch Lingering 1
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "mod_lavacow:long_fragile"}), <minecraft:dragon_breath>); //Removes DeathTouch Lingering 1


recipes.remove(<mod_lavacow:reapers_scythe>);
recipes.remove(<mod_lavacow:war>);
recipes.remove(<mod_lavacow:halo_necklace>);
recipes.remove(<mod_lavacow:dreamcatcher>);
recipes.remove(<mod_lavacow:raven_whistle>);
recipes.remove(<mod_lavacow:famine>);
recipes.remove(<mod_lavacow:faminearmor_helmet>);
recipes.remove(<mod_lavacow:faminearmor_chestplate>);
recipes.remove(<mod_lavacow:faminearmor_leggings>);
recipes.remove(<mod_lavacow:faminearmor_boots>);
recipes.remove(<mod_lavacow:cursed_bandage>);
recipes.remove(<mod_lavacow:cursed_bandage:1>);
recipes.remove(<mod_lavacow:cursed_bandage:2>);
recipes.remove(<mod_lavacow:cursed_bandage:3>);

recipes.remove(<mod_lavacow:cactus_thorn>);
recipes.remove(<mod_lavacow:thorn_shooter>);
recipes.remove(<mod_lavacow:potion_of_mooten_lava>);
recipes.remove(<mod_lavacow:cursed_bandage>);
recipes.remove(<mod_lavacow:weta_hoe>);

//recipes.remove(<mod_lavacow:skeletonking_mace>); - Does not have a recipe blacklisted through JEI
//recipes.remove(<mod_lavacow:emblem_of_king>); - Does not have a recipe blacklisted through JEI

// Name Changes
<mod_lavacow:skeletonking_mace>.displayName = "禁言锤";
<mod_lavacow:holy_grenade>.displayName = "劣质圣手榴弹";
<mod_lavacow:bonestew>.displayName = "龙骨炖汤";
<mod_lavacow:dreamcatcher>.displayName = "诅咒捕梦网";

// Potion of fission tooltip
<mod_lavacow:fissionpotion>.clearTooltip(true);
<mod_lavacow:fissionpotion>.addTooltip("§c将一些可驯服的动物分成两个单独的婴儿。");

// Reminisence tooltip
<mod_lavacow:hatred_shard>.addTooltip("§9骷髅王的下属携带的回忆片段。");

// King's crown Tooltip
<mod_lavacow:kings_crown:1>.addTooltip("§9传说说灵魂需要它的冠冕才能在真正的沙漠中，身体才能再次升起。");

// Ban Hammer Tooltip
<mod_lavacow:skeletonking_mace>.addTooltip("§9Effects not applied on boss.");

//Famine Armor Tooltip
<mod_lavacow:faminearmor_helmet>.addTooltip("§9迷失在城市和深渊深处");
<mod_lavacow:faminearmor_chestplate>.addTooltip("§9迷失在城市和深渊深处");
<mod_lavacow:faminearmor_leggings>.addTooltip("§9迷失在城市和深渊深处");
<mod_lavacow:faminearmor_boots>.addTooltip("§9迷失在城市和深渊深处");
<mod_lavacow:famine>.addTooltip("§9Lost to the Cities and Chasms Deep");
<mod_lavacow:war>.addTooltip("§9迷失在城市和深渊深处");
<mod_lavacow:dreamcatcher>.addTooltip("§9迷失在城市和深渊深处");
<mod_lavacow:halo_necklace>.addTooltip("§9迷失在城市和深渊深处");
<mod_lavacow:raven_whistle>.addTooltip("§9迷失在城市和深渊深处");

// Obtained from tooltips & names
<mod_lavacow:acidicheart>.displayName = "酸性奥斯维尔米斯/木乃伊之心";
<mod_lavacow:feather_black>.displayName = "黑鸦/食尸鬼羽毛";
<mod_lavacow:burntovipositor>.displayName = "烧焦的蝾螈产卵管";
<mod_lavacow:foul_bristle>.displayName = "恶臭雾妖/伊萨夸鬃毛";
<mod_lavacow:hyphae>.displayName = "真菌菌丝";
<mod_lavacow:kings_crown>.addTooltip("真沙漠的宝藏");
<mod_lavacow:hatred_shard>.addTooltip("一位国王的记忆，以及所有为他而死的人。");
<mod_lavacow:moltenbeef>.displayName = "熔岩蝾螈肉";
<mod_lavacow:mossy_stick>.displayName = "淤泥棍";
<mod_lavacow:pigboarhide>.displayName = "亡灵野猪皮";
<mod_lavacow:plagued_porkchop>.displayName = "亡灵猪肉";
<mod_lavacow:poisonspore>.displayName = "毒性菌丝孢子";
<mod_lavacow:scythe_claw>.displayName = "伊萨夸之爪";
<mod_lavacow:banshee_vocal_cord>.displayName = "女妖尖啸声带";
<mod_lavacow:cactus_fruit>.displayName = "仙人掌兽/仙人掌果";
<mod_lavacow:sharptooth>.addTooltip("从雾妖、蜂拥者、亡灵猪、狼和北极熊获得");
<mod_lavacow:chitin>.displayName = "巨沙螽外骨骼";
<mod_lavacow:frozenthigh>.displayName = "冰冻大腿";
<mod_lavacow:poisonstinger>.displayName = "毒蜂刺";

// Description Changes
<mod_lavacow:raven_whistle>.addTooltip("§e乌鸦可以使用发酵蜘蛛眼或寄生虫来驯服。");
<mod_lavacow:ghostjelly>.addTooltip("§e赋予6秒抗性IV和3秒漂浮III效果");
<mod_lavacow:vespa_dagger>.addTooltip("§e施加中毒II效果");
<mod_lavacow:dreamcatcher>.clearTooltip(true);
<mod_lavacow:dreamcatcher>.addTooltip("§e当你从沉睡中醒来时,死者在附近游荡...");
<mod_lavacow:dreamcatcher>.addTooltip(" ");
<mod_lavacow:dreamcatcher>.addTooltip("§8迷雾怪,亡灵猪,伊萨奎,泥浆领主,毒蜂,稻草人,奥斯维米斯");
<mod_lavacow:dreamcatcher>.addTooltip("§8平古,送葬者,女妖,阿瓦顿,卫道士,幽灵或是宝箱!?");

// Completely rename "Death" hammer
<mod_lavacow:skeletonking_mace>.clearTooltip(true);
<mod_lavacow:skeletonking_mace>.addTooltip("§e每次命中后,如果受害者在10秒内掉到25%以下的生命值,就会被瞬间杀死。");
<mod_lavacow:skeletonking_mace>.addTooltip("§4这件物品因明显原因被禁止使用。");

// Completely rename Molten Heart Description
<mod_lavacow:mootenheart>.clearTooltip(true);
<mod_lavacow:mootenheart>.addTooltip("§e火焰伤害保护: -20%");

// Remove fish undead recipes
recipes.remove(<mod_lavacow:bonesword>);
recipes.remove(<mod_lavacow:frozen_dagger>);
recipes.remove(<mod_lavacow:spectral_dagger>);
recipes.remove(<mod_lavacow:moltenpan>);
recipes.remove(<mod_lavacow:moltenhammer>);
recipes.remove(<mod_lavacow:moltenaxe>);
recipes.remove(<mod_lavacow:holy_grenade>);
recipes.remove(<mod_lavacow:sonicbomb>);
recipes.remove(<mod_lavacow:bonestew>);
recipes.remove(<mod_lavacow:ghostjelly>);
recipes.remove(<mod_lavacow:goldenheart>);

// Re-add fish undead bonesword recipe
recipes.addShaped("dregora35",<mod_lavacow:bonesword>,
 [[<mod_lavacow:sharptooth>,<minecraft:bone_block>,<mod_lavacow:sharptooth>],
  [<mod_lavacow:sharptooth>,<minecraft:bone_block>,<mod_lavacow:sharptooth>],
  [null,<iceandfire:dragonbone>,null]]);

// Re-add fish undead frozen_dagger recipe
recipes.addShaped("dregora36",<mod_lavacow:frozen_dagger>,
 [[null,<mod_lavacow:shattered_ice>,null],
  [null,<mod_lavacow:shattered_ice>,null],
  [null,<iceandfire:witherbone>,null]]);

// Re-add fish undead spectral_dagger recipe
recipes.addShaped("dregora37",<mod_lavacow:spectral_dagger>,
 [[null,<mod_lavacow:ectoplasm_ingot>,null],
  [null,<iceandfire:witherbone>,null],
  [null,null,null]]);

// Re-add fish undead moltenpan recipe
recipes.addShaped("dregora38",<mod_lavacow:moltenpan>,
 [[<mod_lavacow:moltenbeef>,<mod_lavacow:moltenbeef>,<mod_lavacow:moltenbeef>],
  [<mod_lavacow:moltenbeef>,<iceandfire:fire_lily>,<mod_lavacow:moltenbeef>],
  [null,<minecraft:blaze_rod>,null]]);

// Re-add fish undead moltenhammer recipe
recipes.addShaped("dregora39",<mod_lavacow:moltenhammer>,
 [[<mod_lavacow:moltenbeef>,<mod_lavacow:moltenbeef>,<mod_lavacow:moltenbeef>],
  [null,<iceandfire:fire_lily>,null],
  [null,<minecraft:blaze_rod>,null]]);

// Re-add fish undead moltenaxe recipe
recipes.addShaped("dregora40",<mod_lavacow:moltenaxe>,
 [[<mod_lavacow:moltenbeef>,<mod_lavacow:moltenbeef>,null],
  [<mod_lavacow:moltenbeef>,<iceandfire:fire_lily>,null],
  [null,<minecraft:blaze_rod>,null]]);

// Re-add fish undead holy_grenade recipe
recipes.addShaped("dregora41",<mod_lavacow:holy_grenade> * 16,
 [[<minecraft:gunpowder>*16,<bountifulbaubles:amuletcross>,<minecraft:gunpowder>*16],
  [<minecraft:quartz>*8,<mod_lavacow:holy_sludge>*16,<minecraft:quartz>*8],
  [<minecraft:gunpowder>*16,<minecraft:quartz>*8,<minecraft:gunpowder>*16]]);

// Halo necklace into spectral silt
recipes.addShapeless("dregora42",<bountifulbaubles:spectralsilt>,[<bountifulbaubles:disintegrationtablet>,<mod_lavacow:halo_necklace>]);

// Golden Heart into spectral silt
//recipes.addShapeless("dregora43",<bountifulbaubles:spectralsilt>,[<bountifulbaubles:disintegrationtablet>,<mod_lavacow:goldenheart>]);

// Re-add fish undead sonicbomb recipe
recipes.addShaped("dregora44",<mod_lavacow:sonicbomb>,
 [[<quark:soul_powder>,<mod_lavacow:banshee_vocal_cord>,<quark:soul_powder>],
  [<mod_lavacow:chitin>,<srparasites:lurecomponent2>,<mod_lavacow:chitin>],
  [<quark:soul_powder>,<mod_lavacow:chitin>,<quark:soul_powder>]]);

// Re-add fish undead Dragon Bone Stew recipe
recipes.addShaped("dregora45",<mod_lavacow:bonestew>,
 [[<minecraft:bowl>,<mod_lavacow:moltenpan>.anyDamage().transformDamage(8),null],
  [<iceandfire:dragonbone>,<mod_lavacow:bloodtooth_shroom>,null],
  [null,null,null]]);

// Re-add fish undead ghostjelly recipe
recipes.addShaped("dregora46",<mod_lavacow:ghostjelly>,
 [[<minecraft:bowl>,<mod_lavacow:moltenpan>.anyDamage().transformDamage(8),null],
  [<mod_lavacow:ectoplasm>,<bountifulbaubles:spectralsilt>,null],
  [null,null,null]]);

//=================================
//DREGORARL NEW ITEM SETS FROM VARIEDCOMMODITIES
//=================================

<variedcommodities:tuxedo_chest>.addTooltip("华丽的胸甲,极其古老但保存状态良好。");
<variedcommodities:tuxedo_pants>.addTooltip("华丽的裤子,极其古老但保存状态良好。");
<variedcommodities:tuxedo_bottom>.addTooltip("陈旧但华丽的风衣,极其古老但保存状态良好。");

<variedcommodities:soldier_head>.displayName = "§6☢ §8§l防护头盔";
<variedcommodities:soldier_chest>.displayName = "§6☢ §8§l防护胸甲";
<variedcommodities:soldier_legs>.displayName = "§6☢ §8§l防护护腿";
<variedcommodities:soldier_bottom>.displayName = "§6☢ §8§l防护护腰";

<variedcommodities:soldier_head>.addTooltip("由未知的古老材料编织而成,这件护甲比表面看起来更有来历。");
<variedcommodities:soldier_chest>.addTooltip("由未知的古老材料编织而成,这件护甲比表面看起来更有来历。");
<variedcommodities:soldier_legs>.addTooltip("由未知的古老材料编织而成,这件护甲比表面看起来更有来历。");
<variedcommodities:soldier_bottom>.addTooltip("由未知的古老材料编织而成,这件护甲比表面看起来更有来历。");

<variedcommodities:x407_head>.displayName = "§8§lX407原型头盔";
<variedcommodities:x407_chest>.displayName = "§8§lX407原型胸甲";
<variedcommodities:x407_legs>.displayName = "§8§lX407原型护腿";
<variedcommodities:x407_boots>.displayName = "§8§lX407原型靴子";

<variedcommodities:x407_head>.addTooltip("这是在瘟疫之前的工程技术巅峰。");
<variedcommodities:x407_chest>.addTooltip("这是在瘟疫之前的工程技术巅峰。");
<variedcommodities:x407_legs>.addTooltip("这是在瘟疫之前的工程技术巅峰。");
<variedcommodities:x407_boots>.addTooltip("这是在瘟疫之前的工程技术巅峰。");

<variedcommodities:commissar_head>.displayName = "§8§l政委帽";
<variedcommodities:commissar_chest>.displayName = "§8§l政委上衣";
<variedcommodities:commissar_legs>.displayName = "§8§l政委护腿";
<variedcommodities:commissar_bottom>.displayName = "§8§l政委下装";

<variedcommodities:commissar_head>.addTooltip("陈旧的装饰性帽子,用细布里衬的皮革帽。");
<variedcommodities:commissar_chest>.addTooltip("陈旧的装饰性胸甲,用细布里衬的皮革夹克,配有装饰元素。");
<variedcommodities:commissar_legs>.addTooltip("陈旧的装饰性裤子,用细布里衬的结实裤子。");
<variedcommodities:commissar_bottom>.addTooltip("陈旧的装饰性风衣,制作精良。");

<variedcommodities:infantry_helmet>.addTooltip("陈旧的装备,仍然提供不错的保护。");
<variedcommodities:officer_chest>.addTooltip("陈旧但结实的胸甲,装饰有各种徽章和标志。");
<variedcommodities:tactical_chest>.addTooltip("陈旧的装备,仍然提供不错的保护。");
<variedcommodities:tactical_head>.addTooltip("陈旧的装备,仍然提供不错的保护。");

<variedcommodities:nanorum_head>.displayName = "§8§l重工业头盔";
<variedcommodities:nanorum_chest>.displayName = "§8§l重工业上衣";
<variedcommodities:nanorum_legs>.displayName = "§8§l重工业护腿";
<variedcommodities:nanorum_boots>.displayName = "§8§l重工业靴子";

<variedcommodities:nanorum_head>.addTooltip("陈旧的头盔,由先进合金制成。提供出色的保护。");
<variedcommodities:nanorum_chest>.addTooltip("陈旧的胸甲,由先进合金制成。提供出色的保护。");
<variedcommodities:nanorum_legs>.addTooltip("陈旧的护腿,由先进合金制成。提供出色的保护。");
<variedcommodities:nanorum_boots>.addTooltip("陈旧的靴子,由先进合金制成。提供出色的保护。");

//=================================
//HERBALIST, AND BRUTAL TOWER TRADERS/INFO
//=================================

// Tell people where to get a biome purifier.
<srparasites:biomepurifier>.addTooltip(format.gold("大多数草药师都能获得,但很少在平原和花田的荒废小屋中找到。"));

//Added easy to understand description to blood tears (so people know where to find them)
<contenttweaker:blood_tear>.addTooltip(format.yellow("恐怖战舰和统治者的残余"));

//Add New trading system items description & lore
<variedcommodities:coin_stone>.displayName = "残酷碎片";
<variedcommodities:coin_stone>.addTooltip(format.gold("在残酷塔楼中发现的残酷硬币碎片,可以修复"));

<biomesoplenty:terrestrial_artifact>.addTooltip(format.gold("充满生命与纯净的本质,可以与大多数药师交易来制造生物群落净化器。"));

<variedcommodities:coin_gold>.displayName = "古老的金币";
<variedcommodities:coin_gold>.addTooltip(format.gold("在哨站和村民中被地理学家视为珍宝,通常在维修井和城市等古老建筑中发现。"));

<variedcommodities:ancient_coin>.displayName = "残酷的金币";
<variedcommodities:ancient_coin>.addTooltip(format.gold("最稀有的宝藏,在被灰雾包围的残酷塔楼中发现,可以与哨站的地理学家和大多数药师交易换取特殊物品,但很少在平原和花田的小屋中发现。"));

<variedcommodities:lead_pipe>.displayName = "古老的神器";
<variedcommodities:lead_pipe>.addTooltip(format.gold("在哨站被地理学家视为珍宝,通常在维修井和城市等古老建筑中发现。"));
<variedcommodities:lead_pipe>.addTooltip(format.gold("只有在原始状态下才出售，每天用铁锭修复"));

<variedcommodities:crowbar>.displayName = "古老的神器";
<variedcommodities:crowbar>.addTooltip(format.gold("在哨站被地理学家视为珍宝,通常在维修井和城市等古老建筑中发现。"));
<variedcommodities:crowbar>.addTooltip(format.gold("只有在原始状态下才出售，每天用铁锭修复"));

<variedcommodities:hammer>.displayName = "古老的神器";
<variedcommodities:hammer>.addTooltip(format.gold("在哨站被地理学家视为珍宝,通常在维修井和城市等古老建筑中发现。"));
<variedcommodities:hammer>.addTooltip(format.gold("只有在原始状态下才出售，每天用铁锭修复"));

<variedcommodities:wrench>.displayName = "古老的神器";
<variedcommodities:wrench>.addTooltip(format.gold("在哨站被地理学家视为珍宝,通常在维修井和城市等古老建筑中发现。"));
<variedcommodities:wrench>.addTooltip(format.gold("只有在原始状态下才出售，每天用铁锭修复"));

<variedcommodities:pipe_wrench>.displayName = "古老的神器";
<variedcommodities:pipe_wrench>.addTooltip(format.gold("在哨站被地理学家视为珍宝,通常在维修井和城市等古老建筑中发现。"));
<variedcommodities:pipe_wrench>.addTooltip(format.gold("只有在原始状态下才出售，每天用铁锭修复"));

//Add the Tool Used Description for Barrier Blocks:
<dimstack:bedrock:7>.addTooltip(format.gold("可以使用副手装备的§4‡ §6§l残酷神器 - Theta§r §4‡§r来破坏。"));

//Add the Tool Used Description for Barrier Blocks:
<dimstack:bedrock:6>.addTooltip(format.gold("可以使用副手装备的§4‡ §6§l残酷吊坠 - Eta§r §4‡§r来破坏。"));

//Give Theta Brutal Key it's name:
<variedcommodities:artifact>.displayName = "§4‡ §6§l残酷神器 - Theta§r §4‡";
<variedcommodities:artifact>.addTooltip(format.gold("装备在副手时获得破坏Theta屏障方块的能力。"));

//Give Eta Brutal Key it's name:
<variedcommodities:pendant>.displayName = "§4‡ §6§l残酷吊坠 - Eta§r §4‡";
<variedcommodities:pendant>.addTooltip(format.gold("装备在副手时获得破坏Eta屏障方块的能力。"));

// Give Fire Element a better name
<variedcommodities:element_fire>.clearTooltip(true);
<variedcommodities:element_fire>.displayName = "金精华";
<variedcommodities:element_fire>.addTooltip(format.darkGray("variedcommodities:element_fire"));
<variedcommodities:element_fire>.addTooltip(format.green("从纯金中提取的精华。"));
<variedcommodities:element_fire>.addTooltip(format.gold("可以从哨站的残酷商人那里获得。"));

// Give The Ruby Gem a better name
<variedcommodities:gem_ruby>.clearTooltip(true);
<variedcommodities:gem_ruby>.displayName = "血宝石";
<variedcommodities:gem_ruby>.addTooltip(format.darkGray("variedcommodities:gem_ruby"));
<variedcommodities:gem_ruby>.addTooltip(format.green("这颗宝石对不知其秘密的人来说是神奇的,感觉沉重而活着..."));
<variedcommodities:gem_ruby>.addTooltip(format.gold("从融合巫师的残骸中提取。"));

// Give the Orb for Eta barrier a better name.
<variedcommodities:orb:0>.clearTooltip(true);
<variedcommodities:orb:0>.displayName = "残酷宝珠";
<variedcommodities:orb:0>.addTooltip(format.darkGray("variedcommodities:orb"));
<variedcommodities:orb:0>.addTooltip(format.green("在这个宝珠中存在着一种类似于闪电的强大力量。"));
<variedcommodities:orb:0>.addTooltip(format.gold("只能从残酷塔楼最深处获得。"));

// Crafting recipe Pendant
recipes.addShaped("dregora20",<variedcommodities:pendant>,
 [[<variedcommodities:orb:0>,<variedcommodities:element_fire>,<variedcommodities:orb:0>],
  [<variedcommodities:element_fire>,<variedcommodities:gem_ruby>,<variedcommodities:element_fire>],
  [<variedcommodities:orb:0>,<variedcommodities:element_fire>,<variedcommodities:orb:0>]]);

val mendingPot = <minecraft:potion>.withTag({Potion: "potioncore:repair"});

// Crafting recipe Brutal Coin Fragments
recipes.addShaped("dregora32",<variedcommodities:ancient_coin>,
 [[<variedcommodities:coin_stone>,<variedcommodities:coin_stone>,<variedcommodities:coin_stone>],
  [<variedcommodities:coin_stone>,mendingPot,<variedcommodities:coin_stone>],
  [<variedcommodities:coin_stone>,<variedcommodities:coin_stone>,<variedcommodities:coin_stone>]]);


//=================================
//Amalgalich, Asmodeus, Rahovart SUMMON CHANGES
//=================================


// Give the Orbs for Lycanites Summons a better name.
<variedcommodities:orb:1>.clearTooltip(true);
<variedcommodities:orb:5>.clearTooltip(true);
<variedcommodities:orb:6>.clearTooltip(true);

<variedcommodities:orb:1>.displayName = "残酷宝珠";
<variedcommodities:orb:1>.addTooltip(format.darkGray("variedcommodities:orb"));
<variedcommodities:orb:1>.addTooltip(format.green("通过这个宝珠你可以看到痛苦和火焰。"));
<variedcommodities:orb:1>.addTooltip(format.gold("可以从哨站的残酷商人那里获得。"));

<variedcommodities:orb:5>.displayName = "残酷宝珠";
<variedcommodities:orb:5>.addTooltip(format.darkGray("variedcommodities:orb"));
<variedcommodities:orb:5>.addTooltip(format.green("来历不明,也许是外星人的宝珠。"));
<variedcommodities:orb:5>.addTooltip(format.gold("可以从哨站的残酷商人那里获得。"));

<variedcommodities:orb:6>.displayName = "暗影宝珠";
<variedcommodities:orb:6>.addTooltip(format.darkGray("variedcommodities:orb"));
<variedcommodities:orb:6>.addTooltip(format.green("一股黑暗的雾气笼罩在宝珠之中。"));
<variedcommodities:orb:6>.addTooltip(format.gold("可以从哨站的残酷商人那里获得。"));

// Remove Lycanite Summoners:
recipes.remove(<lycanitesmobs:soulcubeaberrant>);
recipes.remove(<lycanitesmobs:soulcubeundead>);
recipes.remove(<lycanitesmobs:soulcubedemonic>);

// Re-add Amalgalich Summoner
recipes.addShaped("dregora21",<lycanitesmobs:soulcubeundead>,
 [[<variedcommodities:orb:6>,<variedcommodities:skull>,<variedcommodities:orb:6>],
  [<variedcommodities:skull>,<lycanitesmobs:soulstone_undead>,<variedcommodities:skull>],
  [<variedcommodities:orb:6>,<variedcommodities:skull>,<variedcommodities:orb:6>]]);

// Re-add Asmodeus Summoner
recipes.addShaped("dregora22",<lycanitesmobs:soulcubeaberrant>,
 [[<variedcommodities:orb:5>,<variedcommodities:heart>,<variedcommodities:orb:5>],
  [<variedcommodities:heart>,<lycanitesmobs:soulstone_aberration>,<variedcommodities:heart>],
  [<variedcommodities:orb:5>,<variedcommodities:heart>,<variedcommodities:orb:5>]]);

// Re-add Rahovart Summoner
recipes.addShaped("dregora23",<lycanitesmobs:soulcubedemonic>,
 [[<variedcommodities:orb:1>,<quark:biotite>,<variedcommodities:orb:1>],
  [<quark:biotite>,<lycanitesmobs:soulstone_demon>,<quark:biotite>],
  [<variedcommodities:orb:1>,<quark:biotite>,<variedcommodities:orb:1>]]);

//=================================
//SRParasites new weapons
//=================================

/*
recipes.addShaped("dregora33",<srparasites:weapon_maul>,
 [[<srparasites:infectious_blade_fragment>,<srparasites:living_core>,<srparasites:infectious_blade_fragment>],
  [null,<srparasites:vile_shell>,<srparasites:infectious_blade_fragment>],
  [<srparasites:hardened_bone_handle>,null,null]]);
*/
recipes.addShaped("dregora34",<srparasites:weapon_lance>,
 [[null,<srparasites:infectious_blade_fragment>,null],
  [null,<srparasites:living_core>,null],
  [null,<srparasites:hardened_bone_handle>,null]]);

//=================================
//BOP RECIPES & NAME CHANGES
//=================================

// Remove macaw bamboo bridge recipe
recipes.remove(<mcwbridges:bamboo_bridge>);
recipes.remove(<mcwbridges:dry_bamboo_bridge>);

// Re-add macaw dry bamboo bridge recipe
recipes.addShaped("dregora27",<mcwbridges:dry_bamboo_bridge>,
 [[null,null,null],
  [<biomesoplenty:plant_1:5>,<minecraft:string>,<biomesoplenty:plant_1:5>],
  [<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>]]);

// Re-add macaw bamboo bridge recipe
recipes.addShaped("dregora26",<mcwbridges:bamboo_bridge>,
 [[null,null,null],
  [<biomesoplenty:bamboo>,<minecraft:string>,<biomesoplenty:bamboo>],
  [<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>]]);

// Flax to string recipe
recipes.addShapeless("dregora29",<minecraft:string>,[<biomesoplenty:double_plant:0>]);

// BiomesoPlenty:root to quark:root
recipes.addShapeless("dregora30",<quark:root>,[<biomesoplenty:plant_1:9>]);

// Small Cactus to Cactus fruit
recipes.addShapeless("dregora31",<biomesoplenty:plant_1:6>,[<foodexpansion:itemcactusfruit>]);

// Barley to Wheat recipe
recipes.addShapeless("dregora28",<minecraft:wheat>,[<ore:toolKnife>.transformDamage(2),<biomesoplenty:plant_1:11>]);

//recipes.addShaped("dregora28",<minecraft:wheat> * 3,
// [[<biomesoplenty:plant_1:11>,<biomesoplenty:plant_1:11>,<biomesoplenty:plant_1:11>],
//  [<biomesoplenty:plant_1:11>,<biomesoplenty:plant_1:11>,<biomesoplenty:plant_1:11>],
//  [<biomesoplenty:plant_1:11>,<biomesoplenty:plant_1:11>,<biomesoplenty:plant_1:11>]]);

//Harvesting Tooltips:
<biomesoplenty:plant_1:11>.addTooltip("用剪刀收割。");
<biomesoplenty:double_plant:0>.addTooltip("用剪刀收割。");
<biomesoplenty:plant_1:3>.addTooltip("用剪刀收割。");

//Lower Bamboo Fuel time & add dried leaves as fuel.
furnace.setFuel(<biomesoplenty:bamboo>, 100);
furnace.setFuel(<biomesoplenty:plant_0:0>, 100);

//Remove ceramic vessel from furnace crafting
furnace.remove(<notreepunching:ceramic_small_vessel>);
recipes.remove(<notreepunching:ceramic_small_vessel>);

//Removed biome finder from BOP for it causes lag spikes.
recipes.remove(<biomesoplenty:biome_finder>);

// Remove BOP non-used and double recipes:
recipes.remove(<biomesoplenty:plant_0:4>);
recipes.remove(<biomesoplenty:jar_filled:0>);
recipes.remove(<biomesoplenty:berries>);
recipes.remove(<biomesoplenty:berries>);
recipes.remove(<biomesoplenty:plant_0:5>);
recipes.remove(<biomesoplenty:gem:6>);
recipes.remove(<biomesoplenty:gem_block:6>);

recipes.addShaped("dregora56",<biomesoplenty:terrestrial_artifact>,
 [[<biomesoplenty:gem:1>,<biomesoplenty:gem:3>,<biomesoplenty:gem:7>],
  [<biomesoplenty:gem:2>,<biomesoplenty:gem:5>,<iceandfire:sapphire_gem>],
  [<biomesoplenty:gem:4>,<minecraft:emerald>,null]]);

<biomesoplenty:mushroom:3>.displayName = "辉光菇";
<biomesoplenty:terrarium:8>.displayName = "辉光菇生态缸";

//make bop reed have a use, turn it into plant fibers:
recipes.addShapeless("dregora25",<notreepunching:grass_fiber>*3,[<biomesoplenty:plant_1:8>]);

//fix BOP error unregistered item:
//recipes.remove(<notreepunching:saw_planks_7>);
recipes.addShapeless("dregora19",<biomesoplenty:planks_0:0> * 4,[<ore:toolSaw>.transformDamage(4),<biomesoplenty:log_0:4>]);

// Make BOP logs skinable using hatchet - If true, NTP will add its own log->plank and plank->stick recipes and remove old versions
recipes.addShapeless("dregora17",<minecraft:stick>*8,[<biomesoplenty:log_4:4>]);
recipes.addShapeless("dregora18",<minecraft:stick>*8,[<biomesoplenty:log_4:5>]);

// Remove BOP doors recipe due to 3x door results
recipes.remove(<biomesoplenty:sacred_oak_door>);
recipes.remove(<biomesoplenty:cherry_door>);
recipes.remove(<biomesoplenty:umbran_door>);
recipes.remove(<biomesoplenty:fir_door>);
recipes.remove(<biomesoplenty:ethereal_door>);
recipes.remove(<biomesoplenty:magic_door>);
recipes.remove(<biomesoplenty:mangrove_door>);
recipes.remove(<biomesoplenty:palm_door>);
recipes.remove(<biomesoplenty:redwood_door>);
recipes.remove(<biomesoplenty:willow_door>);
recipes.remove(<biomesoplenty:pine_door>);
recipes.remove(<biomesoplenty:hellbark_door>);
recipes.remove(<biomesoplenty:jacaranda_door>);
recipes.remove(<biomesoplenty:mahogany_door>);
recipes.remove(<biomesoplenty:ebony_door>);
recipes.remove(<biomesoplenty:eucalyptus_door>);

// Add BOP doors recipe with 2x door result.
recipes.addShaped("dregora01",<biomesoplenty:sacred_oak_door>*2,
 [[<biomesoplenty:planks_0:0>,<biomesoplenty:planks_0:0>,null],
  [<biomesoplenty:planks_0:0>,<biomesoplenty:planks_0:0>,null],
  [<biomesoplenty:planks_0:0>,<biomesoplenty:planks_0:0>,null]]);

recipes.addShaped("dregora02",<biomesoplenty:cherry_door>*2,
 [[<biomesoplenty:planks_0:1>,<biomesoplenty:planks_0:1>,null],
  [<biomesoplenty:planks_0:1>,<biomesoplenty:planks_0:1>,null],
  [<biomesoplenty:planks_0:1>,<biomesoplenty:planks_0:1>,null]]);

recipes.addShaped("dregora03",<biomesoplenty:umbran_door>*2,
 [[<biomesoplenty:planks_0:2>,<biomesoplenty:planks_0:2>,null],
  [<biomesoplenty:planks_0:2>,<biomesoplenty:planks_0:2>,null],
  [<biomesoplenty:planks_0:2>,<biomesoplenty:planks_0:2>,null]]);

recipes.addShaped("dregora04",<biomesoplenty:fir_door>*2,
 [[<biomesoplenty:planks_0:3>,<biomesoplenty:planks_0:3>,null],
  [<biomesoplenty:planks_0:3>,<biomesoplenty:planks_0:3>,null],
  [<biomesoplenty:planks_0:3>,<biomesoplenty:planks_0:3>,null]]);

recipes.addShaped("dregora05",<biomesoplenty:ethereal_door>*2,
 [[<biomesoplenty:planks_0:4>,<biomesoplenty:planks_0:4>,null],
  [<biomesoplenty:planks_0:4>,<biomesoplenty:planks_0:4>,null],
  [<biomesoplenty:planks_0:4>,<biomesoplenty:planks_0:4>,null]]);

recipes.addShaped("dregora06",<biomesoplenty:magic_door>*2,
 [[<biomesoplenty:planks_0:5>,<biomesoplenty:planks_0:5>,null],
  [<biomesoplenty:planks_0:5>,<biomesoplenty:planks_0:5>,null],
  [<biomesoplenty:planks_0:5>,<biomesoplenty:planks_0:5>,null]]);

recipes.addShaped("dregora07",<biomesoplenty:mangrove_door>*2,
 [[<biomesoplenty:planks_0:6>,<biomesoplenty:planks_0:6>,null],
  [<biomesoplenty:planks_0:6>,<biomesoplenty:planks_0:6>,null],
  [<biomesoplenty:planks_0:6>,<biomesoplenty:planks_0:6>,null]]);

recipes.addShaped("dregora08",<biomesoplenty:palm_door>*2,
 [[<biomesoplenty:planks_0:7>,<biomesoplenty:planks_0:7>,null],
  [<biomesoplenty:planks_0:7>,<biomesoplenty:planks_0:7>,null],
  [<biomesoplenty:planks_0:7>,<biomesoplenty:planks_0:7>,null]]);

recipes.addShaped("dregora09",<biomesoplenty:redwood_door>*2,
 [[<biomesoplenty:planks_0:8>,<biomesoplenty:planks_0:8>,null],
  [<biomesoplenty:planks_0:8>,<biomesoplenty:planks_0:8>,null],
  [<biomesoplenty:planks_0:8>,<biomesoplenty:planks_0:8>,null]]);

recipes.addShaped("dregora10",<biomesoplenty:willow_door>*2,
 [[<biomesoplenty:planks_0:9>,<biomesoplenty:planks_0:9>,null],
  [<biomesoplenty:planks_0:9>,<biomesoplenty:planks_0:9>,null],
  [<biomesoplenty:planks_0:9>,<biomesoplenty:planks_0:9>,null]]);

recipes.addShaped("dregora11",<biomesoplenty:pine_door>*2,
 [[<biomesoplenty:planks_0:10>,<biomesoplenty:planks_0:10>,null],
  [<biomesoplenty:planks_0:10>,<biomesoplenty:planks_0:10>,null],
  [<biomesoplenty:planks_0:10>,<biomesoplenty:planks_0:10>,null]]);

recipes.addShaped("dregora12",<biomesoplenty:hellbark_door>*2,
 [[<biomesoplenty:planks_0:11>,<biomesoplenty:planks_0:11>,null],
  [<biomesoplenty:planks_0:11>,<biomesoplenty:planks_0:11>,null],
  [<biomesoplenty:planks_0:11>,<biomesoplenty:planks_0:11>,null]]);

recipes.addShaped("dregora13",<biomesoplenty:jacaranda_door>*2,
 [[<biomesoplenty:planks_0:12>,<biomesoplenty:planks_0:12>,null],
  [<biomesoplenty:planks_0:12>,<biomesoplenty:planks_0:12>,null],
  [<biomesoplenty:planks_0:12>,<biomesoplenty:planks_0:12>,null]]);

recipes.addShaped("dregora14",<biomesoplenty:mahogany_door>*2,
 [[<biomesoplenty:planks_0:13>,<biomesoplenty:planks_0:13>,null],
  [<biomesoplenty:planks_0:13>,<biomesoplenty:planks_0:13>,null],
  [<biomesoplenty:planks_0:13>,<biomesoplenty:planks_0:13>,null]]);

recipes.addShaped("dregora15",<biomesoplenty:ebony_door>*2,
 [[<biomesoplenty:planks_0:14>,<biomesoplenty:planks_0:14>,null],
  [<biomesoplenty:planks_0:14>,<biomesoplenty:planks_0:14>,null],
  [<biomesoplenty:planks_0:14>,<biomesoplenty:planks_0:14>,null]]);

recipes.addShaped("dregora16",<biomesoplenty:eucalyptus_door>*2,
 [[<biomesoplenty:planks_0:15>,<biomesoplenty:planks_0:15>,null],
  [<biomesoplenty:planks_0:15>,<biomesoplenty:planks_0:15>,null],
  [<biomesoplenty:planks_0:15>,<biomesoplenty:planks_0:15>,null]]);

// Drop Shattered Ice from ice blocks
furnace.setFuel(<biomesoplenty:seaweed>, 400);
<biomesoplenty:seaweed>.displayName = "干海藻";
furnace.addRecipe(<biomesoplenty:seaweed>, <aquaculture:food:0>, 99999);