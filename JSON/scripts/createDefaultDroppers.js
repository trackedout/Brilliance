const fs = require("fs");
const itemsJson = require("../items_json/Items.json");
const itemsJsonKeys = Object.keys(itemsJson);
const cardsJson = require("../items_json/Cards.json");
const cardsJsonKeys = Object.keys(cardsJson);
const artifactsJson = require("../items_json/Artifacts.json");
const artifactsJsonKeys = Object.keys(artifactsJson);
let crownShop = require("../dungeon_coordinates/Crown_Shop.json");
let emberShop = require("../dungeon_coordinates/Ember_Shop.json");
let loot_locations = require("../dungeon_coordinates/Loot_Locations.json");
let artifacts = require("../dungeon_coordinates/Artifacts.json");
let misc = require("../dungeon_coordinates/MISC.json");
let compasses = require("../dungeon_coordinates/Compasses.json");
let difficulty_tokens = require("../dungeon_coordinates/Difficulty_Tokens.json");

function betterStringify(item) {
  let newItem = `{`;
  for (let i in item) {
    newItem += `${i}:`;
    switch (typeof item[i]) {
      case "string":
        if (item[i][0] === `'`) newItem += `${item[i]}`;
        else if (item[i][item[i].length - 1] === "b") newItem += `${item[i]}`;
        else newItem += `"${item[i]}"`;
        break;
      case "number":
        newItem += item[i];
        break;
      case "object":
        if (item[i] instanceof Array) {
          newItem += `[`;
          for (let j = 0; j < item[i].length; j++) {
            newItem += item[i][j] + ",";
          }
          newItem = newItem.substring(0, newItem.length - 1);
          newItem += `]`;
        } else newItem += betterStringify(item[i]);
        break;
    }
    newItem += ",";
  }
  newItem = newItem.substring(0, newItem.length - 1);
  newItem += `}`;
  return newItem;
}

function createCrownProductsFiles() {
  let keys = Object.keys(crownShop);
  keys.sort();

  function createProductId(num) {
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/crown_shop/product_${keys[num]}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=${crownShop[keys[num]].dropper_facing}]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = crownShop[keys[num]].default_product;

    function getItems(items) {
      if (typeof items === "string") {
        let item = {};
        if (itemsJsonKeys.includes(items)) {
          item = itemsJson[items];
          switch (items) {
            case "level_2_key":
            case "level_3_key":
            case "level_4_key":
            case "coin":
            case "frost_ember":
            case "crown":
            case "rusty_repair_kit":
              if (item.tag) {
                item.tag["tracked"] = "1b";
              }
              break;
          }
        }
        if (cardsJsonKeys.includes(items)) item = cardsJson[items];
        return getItems([item, item, item, item, item, item, item, item, item]);
      } else if (typeof items === "object" && items instanceof Array) {
        for (let i = 0; i < items.length; i++) {
          let item = {};
          if (typeof items[i] === "string") {
            if (itemsJsonKeys.includes(items[i])) {
              item = itemsJson[items[i]];
            }
            if (cardsJsonKeys.includes(items[i])) {
              item = cardsJson[items[i]];
            }
          } else item = items[i]
          if (item && item.id) {
            item.Count = "64b";
            item.Slot = `${i}b`;
            ws.write(`data modify block ~ ~ ~ Items append value ${betterStringify(item)}\n`);
          }
        }
      } else if (typeof items === "object") {
        return getItems([items, items, items, items, items, items, items, items, items]);
      }
    }

    getItems(defaultItems);
    ws.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createProductId(i);
  }
}

function createCrownPricesFiles() {
  let keys = Object.keys(crownShop);
  keys.sort();

  function createProductId(num) {
    let oppositeOf = {
      "west": "east",
      "east": "west",
      "north": "south",
      "south": "north"
    };
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/crown_shop/price_${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:hopper[facing=${crownShop[keys[num]].hopper_facing},enabled=false]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    ws.write(`data modify block ~ ~ ~ Items append value {Slot: 0b, Count:${crownShop[keys[num]].default_price}b, id: "minecraft:iron_nugget"}\n`);
    ws.end();

    let ws2 = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/crown_shop/other_price_${number}.mcfunction`);
    ws2.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws2.write(`setblock ~ ~ ~ minecraft:hopper[facing=${oppositeOf[crownShop[keys[num]].hopper_facing]},enabled=true]{Items:[]}\n\n`);
    ws2.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createProductId(i);
  }
}

function createCrownPricesCommands() {
  let keys = Object.keys(crownShop);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${crownShop[num].prices_hopper_coords[0]} run function do2:reset_dungeon/default_states/crown_shop/price_${num}`);
    console.log(`execute positioned ${crownShop[num].prices_hopper_coords[1]} run function do2:reset_dungeon/default_states/crown_shop/other_price_${num}`);
  }
}

function createEmberProductsFiles() {
  let keys = Object.keys(emberShop);
  keys.sort();

  function createProductId(num) {
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/ember_shop/product_${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=${emberShop[keys[num]].dropper_facing}]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = emberShop[keys[num]].default_products;

    function getItems(items) {
      if (typeof items === "string") {
        let item = {};
        if (itemsJsonKeys.includes(items)) {
          item = itemsJson[items];
          switch (items) {
            case "level_2_key":
            case "level_3_key":
            case "level_4_key":
            case "coin":
            case "frost_ember":
            case "crown":
            case "rusty_repair_kit":
              if (item.tag) {
                item.tag["tracked"] = "1b";
              }
              break;
          }
        }
        if (cardsJsonKeys.includes(items)) item = cardsJson[items];
        return getItems([item, item, item, item, item, item, item, item, item]);
      } else if (typeof items === "object" && items instanceof Array) {
        for (let i = 0; i < items.length; i++) {
          if (items[i]) {
            items[i].Count = "64b";
            items[i].Slot = `${i}b`;
            ws.write(`data modify block ~ ~ ~ Items append value ${betterStringify(items[i])}\n`);
          }
        }
      } else if (typeof items === "object") {
        return getItems([items, items, items, items, items, items, items, items, items]);
      }
    }

    getItems(defaultItems);
    ws.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createProductId(i);
  }
}

function createEmberPricesFiles() {
  let keys = Object.keys(emberShop);
  keys.sort();

  function createProductId(num) {

    let oppositeOf = {
      "west": "east",
      "east": "west",
      "north": "south",
      "south": "north"
    };
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/ember_shop/price_${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:hopper[facing=${emberShop[keys[num]].hopper_facing},enabled=false]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    ws.write(`data modify block ~ ~ ~ Items append value {Slot: 0b, Count:${emberShop[keys[num]].default_price}b, id: "minecraft:iron_nugget"}\n`);
    ws.end();

    let ws2 = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/ember_shop/other_price_${number}.mcfunction`);
    ws2.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws2.write(`setblock ~ ~ ~ minecraft:hopper[facing=${oppositeOf[emberShop[keys[num]].hopper_facing]},enabled=true]{Items:[]}\n\n`);
    ws2.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createProductId(i);
  }
}

function createEmberProductsCommands() {
  let keys = Object.keys(emberShop);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${emberShop[num].product_dropper_coords} run function do2:reset_dungeon/default_states/ember_shop/product_${num}`);
  }
}

function createEmberPricesCommands() {
  let keys = Object.keys(emberShop);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${emberShop[num].prices_hopper_coords[0]} run function do2:reset_dungeon/default_states/ember_shop/price_${num}`);
    console.log(`execute positioned ${emberShop[num].prices_hopper_coords[1]} run function do2:reset_dungeon/default_states/ember_shop/other_price_${num}`);
  }
}

function createDefaultTreasureFiles() {
  let keys = Object.keys(loot_locations);
  keys.sort();

  function createFile(num) {
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/treasure/${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=${loot_locations[keys[num]].treasure_facing}]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = loot_locations[keys[num]].default_treasure;

    function getItems(items) {
      if (typeof items === "string") {
        let item = [];
        if (itemsJsonKeys.includes(items)) {
          item = itemsJson[items];
          switch (items) {
            case "level_2_key":
            case "level_3_key":
            case "level_4_key":
            case "coin":
            case "frost_ember":
            case "crown":
            case "rusty_repair_kit":
            case "halloween_pumpkin":
              if (item.tag) {
                item.tag["tracked"] = "0b";
              }
              break;
          }
        }
        if (cardsJsonKeys.includes(items)) item = cardsJson[items];
        return getItems([item, item, item, item, item, item, item, item, item]);
      } else if (typeof items === "object" && items instanceof Array) {
        for (let i = 0; i < items.length; i++) {
          if (items[i]) {
            let item = items[i];
            if (typeof items[i] === "string") {
              if (itemsJsonKeys.includes(item)) {
                item = itemsJson[item];
                switch (items[i]) {
                  case "level_2_key":
                  case "level_3_key":
                  case "level_4_key":
                  case "coin":
                  case "frost_ember":
                  case "crown":
                  case "rusty_repair_kit":
                  case "halloween_pumpkin":
                    if (item.tag) {
                      item.tag["tracked"] = "0b";
                    }
                    break;
                }
              }
              if (cardsJsonKeys.includes(item)) item = cardsJson[item];
            }
            item.Count = "64b";
            item.Slot = `${i}b`;
            ws.write(`data modify block ~ ~ ~ Items append value ${betterStringify(item)}\n`);
          }
        }
      } else if (typeof items === "object") {
        return getItems([items, items, items, items, items, items, items, items, items]);
      }
    }

    getItems(defaultItems);
    ws.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createFile(i);
  }
}

function createDefaultTreasureCommands() {
  let keys = Object.keys(loot_locations);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${loot_locations[num].treasure_dropper_coords} run function do2:reset_dungeon/default_states/treasure/${num}`);
  }
}

function createDefaultEmberFiles() {
  let keys = Object.keys(loot_locations);
  keys.sort();

  function createFile(num) {
    if (!loot_locations[keys[num]].ember_dropper_coords) return;
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/embers/${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=${loot_locations[keys[num]].ember_facing}]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = [
      "frost_ember",
      "frost_ember",
      "frost_ember",
      "frost_ember",
      "frost_ember",
      "frost_ember",
      "frost_ember",
      "frost_ember",
      "frost_ember"
    ];
    if (number === "60") {
      defaultItems = [
        "frost_ember",
        "frost_ember",
        "frost_ember",
        "frost_ember",
        "frost_ember",
        "frost_ember"
      ];
    }

    function getItems(items) {
      if (typeof items === "string") {
        let item = [];
        if (itemsJsonKeys.includes(items)) {
          item = itemsJson[items];
          switch (items) {
            case "level_2_key":
            case "level_3_key":
            case "level_4_key":
            case "coin":
            case "frost_ember":
            case "crown":
            case "rusty_repair_kit":
            case "halloween_pumpkin":
              if (item.tag) {
                item.tag["tracked"] = "0b";
              }
              break;
          }
        }
        if (cardsJsonKeys.includes(items)) item = cardsJson[items];
        return getItems([item, item, item, item, item, item, item, item, item]);
      } else if (typeof items === "object" && items instanceof Array) {
        for (let i = 0; i < items.length; i++) {
          if (items[i]) {
            let item = items[i];
            if (typeof items[i] === "string") {
              if (itemsJsonKeys.includes(item)) {
                item = itemsJson[item];
                switch (items[i]) {
                  case "level_2_key":
                  case "level_3_key":
                  case "level_4_key":
                  case "coin":
                  case "frost_ember":
                  case "crown":
                  case "rusty_repair_kit":
                  case "halloween_pumpkin":
                    if (item.tag) {
                      item.tag["tracked"] = "0b";
                    }
                    break;
                }
              }
              if (cardsJsonKeys.includes(item)) item = cardsJson[item];
            }
            item.Slot = `${i}b`;
            item.Count = "64b";
            ws.write(`data modify block ~ ~ ~ Items append value ${betterStringify(item)}\n`);
          }
        }
      } else if (typeof items === "object") {
        return getItems([items, items, items, items, items, items, items, items, items]);
      }
    }

    getItems(defaultItems);
    ws.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createFile(i);
  }
}

function createDefaultEmberCommands() {
  let keys = Object.keys(loot_locations);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${loot_locations[num].ember_dropper_coords} run function do2:reset_dungeon/default_states/embers/${num}`);
  }
}

function createDefaultArtifactFiles() {
  let keys = Object.keys(artifacts);
  keys.sort();

  function createFile(num) {
    if (!artifacts[keys[num]].dropper_coords) {
      console.warn("Doesn't Exist Coords:", num, keys[num]);
      return;
    }
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/artifacts/${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=up]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = artifacts[keys[num]].artifacts;

    function getItems(items) {
      if (typeof items === "object" && items instanceof Array) {
        for (let i = 0; i < items.length; i++) {
          if (items[i]) {
            let item = items[i];
            if (typeof items[i] === "string") {
              if (artifactsJsonKeys.includes(item)) {
                item = artifactsJson[item];
                if (item.tag) {
                  item.tag["tracked"] = "0b";
                }
              } else console.warn("Invalid Artifact", item);
            }
            item.Slot = `${i}b`;
            item.Count = "64b";
            ws.write(`data modify block ~ ~ ~ Items append value ${betterStringify(item)}\n`);
          } else console.warn("Invalid items[i]:", items);
        }
      } else console.warn("Not an Array:", items);
    }

    getItems(defaultItems);
    ws.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createFile(i);
  }
}

function createDefaultArtifakeFiles() {
  let keys = Object.keys(artifactsJson);
  keys.sort();

  function createFile(num) {
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/artifakes/${keys[num].toLowerCase()}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=west]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = artifactsJson[keys[num]];

    function getItems(items) {
      if (typeof items === "object" && items instanceof Array) {
        for (let i = 0; i < items.length; i++) {
          if (items[i]) {
            let item = items[i];
            if (typeof items[i] === "string") {
              if (artifactsJsonKeys.includes(item)) {
                item = artifactsJson[item];
                if (item.tag) {
                  item.tag["tracked"] = "0b";
                }
              } else console.warn("Invalid Artifake", item);
            }
            item.Slot = `${i}b`;
            item.Count = "64b";
            let value = betterStringify(item);
            let split = value.split(/ \([0-9]+\)/);
            let val = split[0] + split[1];
            ws.write(`data modify block ~ ~ ~ Items append value ${val}\n`);
          } else console.warn("Invalid items[i]:", items);
        }
      } else if (typeof items === "object") {
        return getItems([items, items, items, items, items, items, items, items, items]);
      }
    }

    getItems(defaultItems);
    ws.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createFile(i);
  }
}

function createDefaultArtifactCommands() {
  let keys = Object.keys(artifacts);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${artifacts[num].dropper_coords} run function do2:reset_dungeon/default_states/artifacts/${num}`);
  }
}

function createDefaultMiscFiles() {
  let keys = Object.keys(misc);
  keys.sort();

  function createFile(num) {
    if (!misc[keys[num]].dropper_coords) {
      console.warn("Doesn't Exist Coords:", num, keys[num]);
      return;
    }
    let name = keys[num].toLowerCase().split(" ").join("_").split("'").join("");
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/misc/${name}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=${misc[keys[num]].facing}]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = misc[keys[num]].default;

    function getItems(items) {
      if (typeof items === "string") {
        let item = {};
        if (itemsJsonKeys.includes(items)) {
          item = itemsJson[items];
          switch (items) {
            case "level_2_key":
            case "level_3_key":
            case "level_4_key":
            case "coin":
            case "frost_ember":
            case "crown":
            case "rusty_repair_kit":
            case "halloween_pumpkin":
              if (item.tag) {
                item.tag["tracked"] = "0b";
              }
              break;
          }
        }
        if (cardsJsonKeys.includes(items)) item = cardsJson[items];
        return getItems([item, item, item, item, item, item, item, item, item]);
      } else if (typeof items === "object" && items instanceof Array) {
        for (let i = 0; i < items.length; i++) {
          if (items[i]) {
            let item = items[i];
            if (typeof items[i] === "string") {
              if (itemsJsonKeys.includes(item)) {
                switch (item) {
                  case "level_2_key":
                  case "level_3_key":
                  case "level_4_key":
                  case "frost_ember":
                  case "coin":
                  case "frost_ember":
                  case "crown":
                  case "porkchop":
                  case "rusty_repair_kit":
                  case "halloween_pumpkin":
                    item = itemsJson[item];
                    if (item.tag) {
                      item.tag["tracked"] = "0b";
                    }
                    break;
                  default:
                    item = itemsJson[item];
                }
              }
              if (cardsJsonKeys.includes(item)) item = cardsJson[item];
            }
            item.Slot = `${i}b`;
            item.Count = `64b`;
            item = betterStringify(item);
            ws.write(`data modify block ~ ~ ~ Items append value ` + item + "\n");
          } else {
            console.warn(num, keys);
          }
        }
      } else if (typeof items === "object") {
        return getItems([items, items, items, items, items, items, items, items, items]);
      } else console.warn(typeof items);
    }

    getItems(defaultItems);
    ws.end();
  }

  for (let i = 0; i < keys.length; i++) {
    createFile(i);
  }
}

function createDefaultMiscCommands() {
  let keys = Object.keys(misc);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    let name = keys[num].toLowerCase().split(" ").join("_").split("'").join("");
    console.log(`execute positioned ${misc[num].dropper_coords} run function do2:reset_dungeon/default_states/misc/${name}`);
  }
}

function createDefaultDifficultyCommands() {
  let keys = Object.keys(difficulty_tokens);
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${difficulty_tokens[num]} run function do2:reset_dungeon/default_states/difficulty/${num}\n`);
  }
}

function createDefaultCompassesCommands() {
  let newCoords = [
    [compasses["easy"].first, "easy_1"],
    [compasses["easy"].second, "easy_2"],
    [compasses["medium"].first, "medium_1"],
    [compasses["medium"].second, "medium_2"],
    [compasses["hard"].first, "hard_1"],
    [compasses["hard"].second, "hard_2"],
    [compasses["deadly"].first, "deadly_1"],
    [compasses["deadly"].second, "deadly_2"],
    [compasses["deepfrost"].first, "deepfrost_1"],
    [compasses["deepfrost"].second, "deepfrost_2"]
  ];
  for (let i = 0; i < newCoords.length; i++) {
    console.log(`execute positioned ${newCoords[i][0]} run function do2:reset_dungeon/default_states/compasses/${newCoords[i][1]}`);
  }
}

createDefaultArtifactFiles()
createDefaultArtifakeFiles()
