//TODO: Deprecate these with localizator		
							
<rustic:chili_pepper_seeds>.addTooltip("适宜种植季节:");
<rustic:chili_pepper_seeds>.addTooltip(format.yellow(" 夏季"));
<rustic:tomato_seeds>.addTooltip("适宜种植季节:");
<rustic:tomato_seeds>.addTooltip(format.yellow(" 夏季"));
<rustic:tomato_seeds>.addTooltip(format.gold(" 秋季"));

<minecraft:fishing_rod:*>.displayName = "古老的钓鱼竿";
<advanced-fishing:blazing_fishing_pole:*>.displayName = "古老的熔岩钓鱼竿";
<iceandfire:fishing_spear:*>.displayName = "古老的钓鱼矛";

<simpledifficulty:heater>.displayName = "加热线圈";
<simpledifficulty:chiller>.displayName = "制冷线圈";
<simpledifficulty:wool_helmet:*>.displayName = "羊毛兜帽";
<simpledifficulty:wool_chestplate:*>.displayName = "羊毛外套";
<simpledifficulty:wool_leggings:*>.displayName = "羊毛护腿";
<simpledifficulty:wool_boots:*>.displayName = "羊毛靴子";

<notreepunching:rock/basalt>.displayName = "玄武岩石头";
<notreepunching:cobblestone/basalt>.displayName = "玄武岩圆石";

<betternether:bone_block>.displayName = "平滑骨块";

<bountifulbaubles:reforger>.displayName = "饰品改造站";
<bountifulbaubles:ringiron>.displayName = "神圣之戒";

<variedcommodities:heart>.displayName = "恶魔之心";
<variedcommodities:skull>.displayName = "腐败之颅";

<minecraft:saddle>.displayName = "基础马鞍";

game.setLocalization("en_us", "tooltip.scripts.onlycrafting", "仅用于合成!");
<minecraft:fishing_rod:*>.addTooltip(format.darkRed(game.localize("tooltip.scripts.onlycrafting","en_us")));
<advanced-fishing:blazing_fishing_pole:*>.addTooltip(format.darkRed(game.localize("tooltip.scripts.onlycrafting","en_us")));
<iceandfire:fishing_spear:*>.addTooltip(format.darkRed(game.localize("tooltip.scripts.onlycrafting","en_us")));

game.setLocalization("en_us", "tooltip.scripts.ozzyliner.destroys", " 移除时会被销毁!");
<armorunder:auto_chestplate_liner>.addTooltip(format.darkRed(game.localize("tooltip.scripts.ozzyliner.destroys", "en_us")));
<armorunder:auto_leggings_liner>.addTooltip(format.darkRed(game.localize("tooltip.scripts.ozzyliner.destroys", "en_us")));

game.setLocalization("en_us", "item.fish.cod.raw.name", "河鱼");
<minecraft:fish:0>.displayName = game.localize("item.fish.cod.raw.name", "en_us");
game.setLocalization("en_us", "item.fish.salmon.raw.name", "山鱼");
<minecraft:fish:1>.displayName = game.localize("item.fish.salmon.raw.name", "en_us");
game.setLocalization("en_us", "item.fish.clownfish.raw.name", "热带鱼");
<minecraft:fish:2>.displayName = game.localize("item.fish.clownfish.raw.name", "en_us");
game.setLocalization("en_us", "item.fish.pufferfish.raw.name", "海鱼");
<minecraft:fish:3>.displayName = game.localize("item.fish.pufferfish.raw.name", "en_us");
game.setLocalization("en_us", "item.fish.cod.cooked.name", "烹饪河鱼");
<minecraft:cooked_fish:0>.displayName = game.localize("item.fish.cod.cooked.name", "en_us");
game.setLocalization("en_us", "item.fish.salmon.cooked.name", "烹饪山鱼");
<minecraft:cooked_fish:1>.displayName = game.localize("item.fish.salmon.cooked.name", "en_us");

game.setLocalization("en_us", "tooltip.quark:ancient_tome", "在副手使用以应用到匹配的附魔物品上");
<quark:ancient_tome:*>.addTooltip(format.gold(game.localize("tooltip.quark:ancient_tome", "en_us")));

game.setLocalization("en_us", "tooltip.rlmixins:cleansing_talisman", "与任何附魔书合成,可将该附魔转换为诅咒破除");
<rlmixins:cleansing_talisman>.addTooltip(format.gold(game.localize("tooltip.rlmixins:cleansing_talisman", "en_us")));

game.setLocalization("en_us", "tooltip.bountifulbaubles:amuletsinwrath", "一件失落在时间中的战利品,令人联想到另一个世界。");
<bountifulbaubles:amuletsinwrath>.addTooltip(format.darkPurple(game.localize("tooltip.bountifulbaubles:amuletsinwrath", "en_us")));

game.setLocalization("en_us", "tooltip.variedcommodities:heart", "拉霍瓦特掉落的众多心脏之一,仍然带有恶魔能量。");
<variedcommodities:heart>.addTooltip(format.green(game.localize("tooltip.variedcommodities:heart", "en_us")));
game.setLocalization("en_us", "tooltip.variedcommodities:skull", "亚斯摩蒂斯掉落的众多头骨之一,里面的迷失之魂仍在尖叫。");
<variedcommodities:skull>.addTooltip(format.green(game.localize("tooltip.variedcommodities:skull", "en_us")));

//<locks:wood_lock>.addTooltip(format.green("抗爆性: 较弱"));
//<locks:iron_lock>.addTooltip(format.green("抗爆性: 一般"));
//<locks:gold_lock>.addTooltip(format.green("抗爆性: 较弱"));
//<locks:steel_lock>.addTooltip(format.green("抗爆性: 强"));
//<locks:diamond_lock>.addTooltip(format.green("抗爆性: 极强"));

//END Deprecate these with localizator