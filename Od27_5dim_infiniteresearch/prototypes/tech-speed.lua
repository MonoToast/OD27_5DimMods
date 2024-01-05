data:extend(
    {
        {
            type = "technology",
            name = "research-speed-7",
            icons = util.technology_icon_constant_speed("__base__/graphics/technology/research-speed.png"),
            -- icon_size = 256,
            effects = {
                {
                    type = "laboratory-speed",
                    modifier = 0.6
                }
            },
            prerequisites = {"research-speed-6"},
            unit = {
                count_formula = "500*(L-5)",
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1}
                },
                time = 30
            },
            max_level = "infinite",
            order = "c-m-d"
        }
    }
)
