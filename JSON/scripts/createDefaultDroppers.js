import fs from "fs";
import { stringify, Int8, Int32 } from "nbtify";

const difficultyTokens = JSON.parse(fs.readFileSync("../dungeon_coordinates/Difficulty_Tokens.json", "utf-8"));
const compasses = JSON.parse(fs.readFileSync("../dungeon_coordinates/Compasses.json", "utf-8"));
const misc = JSON.parse(fs.readFileSync("../dungeon_coordinates/MISC.json", "utf-8"));
const artifacts = JSON.parse(fs.readFileSync("../dungeon_coordinates/Artifacts.json", "utf-8"));
const lootLocations = JSON.parse(fs.readFileSync("../dungeon_coordinates/Loot_Locations.json", "utf-8"));
const emberShop = JSON.parse(fs.readFileSync("../dungeon_coordinates/Ember_Shop.json", "utf-8"));
const crownShop = JSON.parse(fs.readFileSync("../dungeon_coordinates/Crown_Shop.json", "utf-8"));
const artifactsJson = JSON.parse(fs.readFileSync("../items_json/Artifacts.json", "utf-8"));
const cardsJson = JSON.parse(fs.readFileSync("../items_json/Cards.json", "utf-8"));
const itemsJson = JSON.parse(fs.readFileSync("../items_json/Items.json", "utf-8"));

const itemsJsonKeys = Object.keys(itemsJson);
const cardsJsonKeys = Object.keys(cardsJson);
const artifactsJsonKeys = Object.keys(artifactsJson);

function removeKeys(obj, keys) {
  for (let i in obj) {
    for (let j in keys) {
      delete obj[i][keys[j]];
    }
  }
}

// Map over json objects and remove unwanted keys
removeKeys(cardsJson, ["maxCopies", "lore", "name"]);
removeKeys(artifactsJson, ["emberValue"]);

// Helper function to convert JSON fields to NBT bytes
const convertToNbtBytes = (obj) => {
  for (const key in obj) {
    if (typeof obj[key] === 'string' && obj[key].endsWith('b')) {
      obj[key] = new Int8(parseInt(obj[key].slice(0, -1), 10)); // Convert to integer then to boolean
    } else if (typeof obj[key] === 'number') {
      obj[key] = new Int32(obj[key]);
    } else if (typeof obj[key] === 'object' && !Array.isArray(obj[key])) {
      convertToNbtBytes(obj[key]); // Recursively convert nested objects
    }
  }
  return obj;
};

const betterStringify = (json) => {
  try {
    // Convert JSON fields to NBT bytes, then to a MC command compatible format (still NBT)
    return stringify(convertToNbtBytes(json));
  } catch (error) {
    console.error(error.message);
    return null;
  }
};

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
        if (cardsJsonKeys.includes(items)) {
          item = cardsJson[items];
        }
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
          } else {
            item = items[i]
          }
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
        if (cardsJsonKeys.includes(items)) {
          item = cardsJson[items];
        }
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
  let keys = Object.keys(lootLocations);
  keys.sort();

  function createFile(num) {
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/treasure/${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=${lootLocations[keys[num]].treasure_facing}]{Items:[]}\n\n`);
    ws.write(`# Insert items. (ordered by slot)\n`);
    let defaultItems = lootLocations[keys[num]].default_treasure;

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
        if (cardsJsonKeys.includes(items)) {
          item = cardsJson[items];
        }
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
              if (cardsJsonKeys.includes(item)) {
                item = cardsJson[item];
              }
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
  let keys = Object.keys(lootLocations);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${lootLocations[num].treasure_dropper_coords} run function do2:reset_dungeon/default_states/treasure/${num}`);
  }
}

function createDefaultEmberFiles() {
  let keys = Object.keys(lootLocations);
  keys.sort();

  function createFile(num) {
    if (!lootLocations[keys[num]].ember_dropper_coords) {
      return;
    }
    let number = `00`.substring((num + 1).toString().length) + (num + 1);
    let ws = fs.createWriteStream(`./../../Brilliance Datapack/data/do2/functions/reset_dungeon/default_states/embers/${number}.mcfunction`);
    ws.write(`# REMOVE ALL ITEMS INSIDE:\n`);
    ws.write(`setblock ~ ~ ~ minecraft:dropper[facing=${lootLocations[keys[num]].ember_facing}]{Items:[]}\n\n`);
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
        if (cardsJsonKeys.includes(items)) {
          item = cardsJson[items];
        }
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
              if (cardsJsonKeys.includes(item)) {
                item = cardsJson[item];
              }
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
  let keys = Object.keys(lootLocations);
  keys.sort();
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${lootLocations[num].ember_dropper_coords} run function do2:reset_dungeon/default_states/embers/${num}`);
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
              } else {
                console.warn("Invalid Artifact", item);
              }
            }
            item.Slot = `${i}b`;
            item.Count = "64b";
            ws.write(`data modify block ~ ~ ~ Items append value ${betterStringify(item)}\n`);
          } else {
            console.warn("Invalid items[i]:", items);
          }
        }
      } else {
        console.warn("Not an Array:", items);
      }
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
              } else {
                console.warn("Invalid Artifake", item);
              }
            }
            item.Slot = `${i}b`;
            item.Count = "64b";
            let value = betterStringify(item);
            let split = value.split(/ \([0-9]+\)/);
            let val = split[0] + split[1];
            ws.write(`data modify block ~ ~ ~ Items append value ${val}\n`);
          } else {
            console.warn("Invalid items[i]:", items);
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
            case "frost_ember":
            case "coin":
            case "crown":
            case "rusty_repair_kit":
            case "halloween_pumpkin":
              if (item.tag) {
                item.tag["tracked"] = "0b";
              }
              break;
          }
        }
        if (cardsJsonKeys.includes(items)) {
          item = cardsJson[items];
        }
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
              if (cardsJsonKeys.includes(item)) {
                item = cardsJson[item];
              }
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
      } else {
        console.warn(typeof items);
      }
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
  let keys = Object.keys(difficultyTokens);
  for (let i = 0; i < keys.length; i++) {
    let num = keys[i];
    console.log(`execute positioned ${difficultyTokens[num]} run function do2:reset_dungeon/default_states/difficulty/${num}\n`);
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

// createEmberProductsCommands();
createEmberProductsFiles();

createDefaultMiscFiles();
createCrownProductsFiles();
