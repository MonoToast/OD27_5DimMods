require("tint-gun-turret")

function string:split(delimiter)
    local result = {}
    local from = 1
    local delim_from, delim_to = string.find(self, delimiter, from)
    while delim_from do
        table.insert(result, string.sub(self, from, delim_from - 1))
        from = delim_to + 1
        delim_from, delim_to = string.find(self, delimiter, from)
    end
    table.insert(result, string.sub(self, from))
    return result
end

function genGunTurrets(inputs)
    -- Copy electric furnace
    local item = table.deepcopy(data.raw.item["gun-turret"])
    local recipe = table.deepcopy(data.raw.recipe["gun-turret"])
    local entity = table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
    local tech = table.deepcopy(data.raw.technology["gun-turret"])

    local tint = {r = 1, g = 1, b = 0.1, a = 1}

    --Item
    if inputs.new then
        item.name = "5d-gun-turret-" .. inputs.number
    end

    local split = inputs.number:split("-")

    if string.find(inputs.number, "small") ~= nil then
        item.icon = "__OD27_5dim_battlefield__/graphics/icon/gun-turret/small/gun-turret-small-" .. split[2] .. ".png"
    elseif string.find(inputs.number, "big") ~= nil then
        item.icon = "__OD27_5dim_battlefield__/graphics/icon/gun-turret/big/gun-turret-big-" .. split[2] .. ".png"
    elseif string.find(inputs.number, "sniper") ~= nil then
        item.icon = "__OD27_5dim_battlefield__/graphics/icon/gun-turret/sniper/gun-turret-sniper-" .. split[2] .. ".png"
    else
        item.icon = "__OD27_5dim_battlefield__/graphics/icon/gun-turret/normal/gun-turret-normal-" .. split[1] .. ".png"
    end

    item.subgroup = inputs.subgroup
    item.order = inputs.order
    item.place_result = item.name

    --Recipe
    recipe.name = item.name
    recipe.icon = item.icon
    recipe.result = item.name
    recipe.icon_size = 64
    -- if inputs.new then
    recipe.enabled = false
    -- end
    recipe.ingredients = inputs.ingredients

    --Entity
    entity.name = item.name
    entity.next_upgrade = inputs.nextUpdate or nil
    entity.icon = item.icon
    entity.minable.result = item.name
    entity.automated_ammo_count = inputs.ammoCount
    entity.attack_parameters.cooldown = inputs.attackSpeed
    entity.attack_parameters.range = inputs.range
    entity.attack_parameters.damage_modifier = inputs.cooldown
    entity.folded_animation.layers[2] =
        dim_gun_turret_extension_mask {
        frame_count = 1,
        line_length = 1,
        tint = inputs.tint
    }
    entity.preparing_animation.layers[2] = dim_gun_turret_extension_mask {tint = inputs.tint}
    entity.folding_animation.layers[2] =
        dim_gun_turret_extension_mask {
        run_mode = "backward",
        tint = inputs.tint
    }
    entity.base_picture.layers[2].apply_runtime_tint = false
    entity.base_picture.layers[2].tint = inputs.tint
    entity.base_picture.layers[2].hr_version.apply_runtime_tint = false
    entity.base_picture.layers[2].hr_version.tint = inputs.tint
    entity.attacking_animation.layers[2].apply_runtime_tint = false
    entity.attacking_animation.layers[2].tint = inputs.tint
    entity.attacking_animation.layers[2].hr_version.apply_runtime_tint = false
    entity.attacking_animation.layers[2].hr_version.tint = inputs.tint
    entity.prepared_animation.layers[2].apply_runtime_tint = false
    entity.prepared_animation.layers[2].tint = inputs.tint
    entity.prepared_animation.layers[2].hr_version.apply_runtime_tint = false
    entity.prepared_animation.layers[2].hr_version.tint = inputs.tint
    entity.max_health = inputs.health or 480
    entity.fast_replaceable_group = "gun-turret"
    entity.resistances = inputs.resistances or nil
    data:extend(
        {
            entity,
            recipe,
            item
        }
    )

    -- Technology
    if inputs.tech then
        tech.name = inputs.tech.number
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
    table.insert(
        data.raw.technology["physical-projectile-damage-1"].effects,
        {type = "turret-attack", turret_id = item.name, modifier = 0.1}
    )

    table.insert(
        data.raw.technology["physical-projectile-damage-2"].effects,
        {type = "turret-attack", turret_id = item.name, modifier = 0.1}
    )

    table.insert(
        data.raw.technology["physical-projectile-damage-3"].effects,
        {type = "turret-attack", turret_id = item.name, modifier = 0.2}
    )

    table.insert(
        data.raw.technology["physical-projectile-damage-4"].effects,
        {type = "turret-attack", turret_id = item.name, modifier = 0.2}
    )

    table.insert(
        data.raw.technology["physical-projectile-damage-5"].effects,
        {type = "turret-attack", turret_id = item.name, modifier = 0.2}
    )

    table.insert(
        data.raw.technology["physical-projectile-damage-6"].effects,
        {type = "turret-attack", turret_id = item.name, modifier = 0.4}
    )

    table.insert(
        data.raw.technology["physical-projectile-damage-7"].effects,
        {type = "turret-attack", turret_id = item.name, modifier = 0.7}
    )
end
