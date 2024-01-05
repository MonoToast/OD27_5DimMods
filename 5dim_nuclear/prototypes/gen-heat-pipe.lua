require("__OD27_5dim_core__.lib.nuclear.generation-heat-pipe")

local speed = 1000
local modules = 2
local energy = 1
local emisions = 30
local techCount = 500

-- Electric furnace 01
genHeatPipes {
    number = "01",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = false,
    order = "a",
    ingredients = {
        {"steel-plate", 10},
        {"copper-plate", 20}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-02",
    tech = nil
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 02
genHeatPipes {
    number = "02",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "b",
    ingredients = {
        {"heat-pipe", 1},
        {"steel-plate", 10},
        {"copper-plate", 20}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-03",
    tech = {
        number = 1,
        count = techCount * 1,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        prerequisites = {
            "nuclear-power",
        }
    }
}

speed = speed + 0.5
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 03
genHeatPipes {
    number = "03",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "c",
    ingredients = {
        {"5d-heat-pipe-02", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-04",
    tech = {
        number = 2,
        count = techCount * 2,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-1",
            "5d-steam-turbine-1",
            "5d-heat-pipe-1",
            "5d-heat-exchanger-1"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 04
genHeatPipes {
    number = "04",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "d",
    ingredients = {
        {"5d-heat-pipe-03", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-05",
    tech = {
        number = 3,
        count = techCount * 3,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-2",
            "5d-steam-turbine-2",
            "5d-heat-pipe-2",
            "5d-heat-exchanger-2",
            "space-science-pack"
        }
    }
}

speed = speed + 0.5
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 05
genHeatPipes {
    number = "05",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "e",
    ingredients = {
        {"5d-heat-pipe-04", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 2},
        {"effectivity-module", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-06",
    tech = {
        number = 4,
        count = techCount * 4,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-3",
            "5d-steam-turbine-3",
            "5d-heat-pipe-3",
            "5d-heat-exchanger-3"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 06
genHeatPipes {
    number = "06",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "f",
    ingredients = {
        {"5d-heat-pipe-05", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 2},
        {"effectivity-module", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-07",
    tech = {
        number = 5,
        count = techCount * 5,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-4",
            "5d-steam-turbine-4",
            "5d-heat-pipe-4",
            "5d-heat-exchanger-4"
        }
    }
}

speed = speed + 0.5
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 07
genHeatPipes {
    number = "07",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "g",
    ingredients = {
        {"5d-heat-pipe-06", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 2},
        {"effectivity-module-2", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-08",
    tech = {
        number = 6,
        count = techCount * 6,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-5",
            "5d-steam-turbine-5",
            "5d-heat-pipe-5",
            "5d-heat-exchanger-5"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 08
genHeatPipes {
    number = "08",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "h",
    ingredients = {
        {"5d-heat-pipe-07", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 2},
        {"effectivity-module-2", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-09",
    tech = {
        number = 7,
        count = techCount * 7,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-6",
            "5d-steam-turbine-6",
            "5d-heat-pipe-6",
            "5d-heat-exchanger-6"
        }
    }
}

speed = speed + 0.5
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 09
genHeatPipes {
    number = "09",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "i",
    ingredients = {
        {"5d-heat-pipe-08", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 2},
        {"effectivity-module-3", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-heat-pipe-10",
    tech = {
        number = 8,
        count = techCount * 8,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-7",
            "5d-steam-turbine-7",
            "5d-heat-pipe-7",
            "5d-heat-exchanger-7"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 0.5
emisions = emisions + 15

-- Electric furnace 10
genHeatPipes {
    number = "10",
    subgroup = "nuclear-pipe",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "j",
    ingredients = {
        {"5d-heat-pipe-09", 1},
        {"steel-plate", 10},
        {"copper-plate", 20},
        {"low-density-structure", 2},
        {"effectivity-module-3", 1}
    },
    pollution = emisions,
    tech = {
        number = 9,
        count = techCount * 9,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        prerequisites = {
            "5d-nuclear-reactor-8",
            "5d-steam-turbine-8",
            "5d-heat-pipe-8",
            "5d-heat-exchanger-8"
        }
    }
}
