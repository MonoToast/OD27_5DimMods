require("__OD27_5dim_core__.lib.mining.generation-pumpjack")

local speed = 1
local modules = 2
local energy = 90
local emisions = 10
local techCount = 200

-- Electric furnace 01
genPumpjacks {
    number = "01",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = false,
    order = "a",
    ingredients = {
        {"steel-plate", 5},
        {"iron-gear-wheel", 10},
        {"electronic-circuit", 5},
        {"pipe", 10}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-02",
    tech = nil
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 02
genPumpjacks {
    number = "02",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "b",
    ingredients = {
        {"pumpjack", 1},
        {"steel-plate", 5},
        {"iron-gear-wheel", 10},
        {"electronic-circuit", 5},
        {"pipe", 10}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-03",
    tech = {
        number = 1,
        count = techCount * 1,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        prerequisites = {
            "oil-processing",
            "logistic-science-pack"
        }
    }
}

speed = speed + 0.5
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 03
genPumpjacks {
    number = "03",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "c",
    ingredients = {
        {"5d-pumpjack-02", 1},
        {"steel-plate", 5},
        {"iron-gear-wheel", 10},
        {"electronic-circuit", 5},
        {"pipe", 10}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-04",
    tech = {
        number = 2,
        count = techCount * 2,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        prerequisites = {
            "5d-pumpjack-1"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 04
genPumpjacks {
    number = "04",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "d",
    ingredients = {
        {"5d-pumpjack-03", 1},
        {"steel-plate", 5},
        {"iron-gear-wheel", 10},
        {"electronic-circuit", 5},
        {"pipe", 10}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-05",
    tech = {
        number = 3,
        count = techCount * 3,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        prerequisites = {
            "5d-pumpjack-2",
            "chemical-science-pack"
        }
    }
}

speed = speed + 0.5
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 05
genPumpjacks {
    number = "05",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "e",
    ingredients = {
        {"5d-pumpjack-04", 1},
        {"steel-plate", 5},
        {"iron-gear-wheel", 10},
        {"electronic-circuit", 5},
        {"pipe", 10}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-06",
    tech = {
        number = 4,
        count = techCount * 4,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        prerequisites = {
            "5d-pumpjack-3"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 06
genPumpjacks {
    number = "06",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "f",
    ingredients = {
        {"5d-pumpjack-05", 1},
        {"steel-plate", 5},
        {"advanced-circuit", 5},
        {"productivity-module", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-07",
    tech = {
        number = 5,
        count = techCount * 5,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        prerequisites = {
            "5d-pumpjack-4",
            "production-science-pack"
        }
    }
}

speed = speed + 0.5
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 07
genPumpjacks {
    number = "07",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "g",
    ingredients = {
        {"5d-pumpjack-06", 1},
        {"steel-plate", 5},
        {"advanced-circuit", 5},
        {"speed-module-2", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-08",
    tech = {
        number = 6,
        count = techCount * 6,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        prerequisites = {
            "5d-pumpjack-5"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 08
genPumpjacks {
    number = "08",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "h",
    ingredients = {
        {"5d-pumpjack-07", 1},
        {"advanced-circuit", 5},
        {"low-density-structure", 2},
        {"productivity-module-2", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-09",
    tech = {
        number = 7,
        count = techCount * 7,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        prerequisites = {
            "5d-pumpjack-6",
            "utility-science-pack"
        }
    }
}

speed = speed + 0.5
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 09
genPumpjacks {
    number = "09",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "i",
    ingredients = {
        {"5d-pumpjack-08", 1},
        {"advanced-circuit", 5},
        {"low-density-structure", 2},
        {"speed-module-3", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-pumpjack-10",
    tech = {
        number = 8,
        count = techCount * 8,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        prerequisites = {
            "5d-pumpjack-7"
        }
    }
}

speed = speed + 0.5
modules = modules + 1
energy = energy + 45
emisions = emisions + 5

-- Electric furnace 10
genPumpjacks {
    number = "10",
    subgroup = "liquid-pump",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "j",
    ingredients = {
        {"5d-pumpjack-09", 1},
        {"steel-plate", 5},
        {"low-density-structure", 5},
        {"processing-unit", 2},
        {"productivity-module-3", 1}
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
            "5d-pumpjack-8"
        }
    }
}
