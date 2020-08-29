function genBigPoles(inputs)
    -- Copy electric furnace
    itemBigPole = table.deepcopy(data.raw.item["substation"])
    recipeBigPole = table.deepcopy(data.raw.recipe["substation"])
    entityBigPole = table.deepcopy(data.raw["electric-pole"]["substation"])
    technologyBigPole = table.deepcopy(data.raw.technology["electric-energy-accumulators"])

    --Item
    if inputs.new then
        itemBigPole.name = "5d-substation-" .. inputs.number
    end
    -- itemBigPole.icon =
    --     "__5dim_energy__/graphics/icon/substation/substation-icon-" .. inputs.number .. ".png"
    itemBigPole.subgroup = inputs.subgroup
    itemBigPole.order = inputs.order
    itemBigPole.place_result = itemBigPole.name

    --Recipe
    recipeBigPole.name = itemBigPole.name
    -- recipeBigPole.icon = itemBigPole.icon
    recipeBigPole.result = itemBigPole.name
    recipeBigPole.icon_size = 64
    if inputs.new then
        recipeBigPole.enabled = false
    end
    recipeBigPole.ingredients = inputs.ingredients

    --Entity
    entityBigPole.name = itemBigPole.name
    -- entityBigPole.icon = itemBigPole.icon
    entityBigPole.minable.result = itemBigPole.name
    entityBigPole.maximum_wire_distance = inputs.craftingSpeed
    entityBigPole.supply_area_distance = inputs.energyUsage

    -- Base
    -- entityBigPole.picture.layers[1].hr_version.filename =
    --     "__5dim_energy__/graphics/entities/substation/substation-" .. inputs.number .. ".png"

    data:extend({entityBigPole, recipeBigPole, itemBigPole})

    -- Technology
    if inputs.tech then
        technologyBigPole.name = "5d-substation-" .. inputs.tech.number
        --technologyBigPole.icon = "__base__/graphics/technology/oil-refinery.png"
        technologyBigPole.unit.count = inputs.tech.count
        technologyBigPole.unit.ingredients = inputs.tech.packs
        technologyBigPole.prerequisites = inputs.tech.prerequisites
        technologyBigPole.effects = {
            {
                type = "unlock-recipe",
                recipe = itemBigPole.name
            }
        }
        data:extend({technologyBigPole})
    end
end