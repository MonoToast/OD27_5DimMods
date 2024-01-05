function genMasher(inputs)
    -- Copy electric furnace
    local item = table.deepcopy(data.raw.item["electric-furnace"])
    local recipe = table.deepcopy(data.raw.recipe["electric-furnace"])
    local entity = table.deepcopy(data.raw["furnace"]["electric-furnace"])
    local tech = table.deepcopy(data.raw.technology["advanced-material-processing"])

    --Item
    item.name = "5d-masher-" .. inputs.number
    item.icon = "__OD27_5dim_resources__/graphics/icon/masher/masher-icon-" .. inputs.number .. ".png"
    item.subgroup = inputs.subgroup
    item.order = inputs.order
    item.place_result = item.name

    --Recipe
    recipe.name = item.name
    recipe.result = item.name
    recipe.icon = item.icon
    recipe.icon_size = 64
    recipe.enabled = false
    recipe.ingredients = inputs.ingredients

    --Entity
    entity.name = item.name
    entity.next_upgrade = inputs.nextUpdate or nil
    entity.icon = item.icon
    entity.minable.result = item.name
    entity.crafting_speed = inputs.craftingSpeed
    entity.module_specification.module_slots = inputs.moduleSlots
    entity.energy_usage = inputs.energyUsage .. "kW"
    entity.animation.layers[1].hr_version.filename =
        "__OD27_5dim_resources__/graphics/entities/masher/masher-" .. inputs.number .. ".png"
    entity.animation.layers[1].hr_version.width = 160
    entity.animation.layers[1].hr_version.height = 160
    entity.animation.layers[1].hr_version.shift = {0, -0.421875}
    entity.animation.layers[1].hr_version.scale = 1
    entity.crafting_categories = {"mashering"}
    entity.energy_source.emissions_per_minute = inputs.pollution
    entity.fast_replaceable_group = "5d-masher"

    data:extend({entity, recipe, item})

    if inputs.tech then
        -- Technology
        tech.name = "5d-masher-" .. inputs.tech.number
        tech.icon = item.icon
        tech.icon_size = 64
        tech.unit.count = inputs.tech.count
        tech.unit.ingredients = inputs.tech.packs
        tech.prerequisites = inputs.tech.prerequisites
        tech.effects = {
            {
                type = "unlock-recipe",
                recipe = item.name
            }
        }
        data:extend({tech})
    end
end
