require("__OD27_5dim_core__.lib.energy.generation-medium-pole")

local speed = 9
local modules = 2
local energy = 3.5
local emisions = 30
local techCount = 150

-- Electric furnace 01
genMediumPoles {
    number = "01",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = false,
    order = "a",
    ingredients = {
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"copper-plate", 2}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-02",
    tech = nil
}

speed = speed + 2
modules = modules + 1
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 02
genMediumPoles {
    number = "02",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "b",
    ingredients = {
        {"medium-electric-pole", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"copper-plate", 2}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-03",
    tech = {
        number = 1,
        count = techCount * 1,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        prerequisites = {
            "electric-energy-distribution-1"
        }
    }
}

speed = speed + 2
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 03
genMediumPoles {
    number = "03",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "c",
    ingredients = {
        {"5d-medium-electric-pole-02", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"copper-plate", 2}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-04",
    tech = {
        number = 2,
        count = techCount * 2,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        prerequisites = {
            "5d-substation-1",
            "5d-medium-electric-pole-1",
            "5d-big-electric-pole-1",
            "chemical-science-pack"
        }
    }
}

speed = speed + 2
modules = modules + 1
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 04
genMediumPoles {
    number = "04",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "d",
    ingredients = {
        {"5d-medium-electric-pole-03", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"copper-plate", 2}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-05",
    tech = {
        number = 3,
        count = techCount * 3,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1}
        },
        prerequisites = {
            "5d-substation-2",
            "5d-medium-electric-pole-2",
            "5d-big-electric-pole-2"
        }
    }
}

speed = speed + 2
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 05
genMediumPoles {
    number = "05",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "e",
    ingredients = {
        {"5d-medium-electric-pole-04", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"copper-plate", 2}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-06",
    tech = {
        number = 4,
        count = techCount * 4,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1}
        },
        prerequisites = {
            "5d-substation-3",
            "5d-medium-electric-pole-3",
            "5d-big-electric-pole-3",
            "production-science-pack"
        }
    }
}

speed = speed + 2
modules = modules + 1
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 06
genMediumPoles {
    number = "06",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "f",
    ingredients = {
        {"5d-medium-electric-pole-05", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"copper-plate", 2}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-07",
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
            "5d-substation-4",
            "5d-medium-electric-pole-4",
            "5d-big-electric-pole-4"
        }
    }
}

speed = speed + 2
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 07
genMediumPoles {
    number = "07",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "g",
    ingredients = {
        {"5d-medium-electric-pole-06", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"copper-plate", 2}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-08",
    tech = {
        number = 6,
        count = techCount * 6,
        packs = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        prerequisites = {
            "5d-substation-5",
            "5d-medium-electric-pole-5",
            "5d-big-electric-pole-5",
            "utility-science-pack"
        }
    }
}

speed = speed + 2
modules = modules + 1
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 08
genMediumPoles {
    number = "08",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules,
    energyUsage = energy,
    new = true,
    order = "h",
    ingredients = {
        {"5d-medium-electric-pole-07", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"electronic-circuit", 2},
        {"low-density-structure", 1}
        
    },
    pollution = emisions,
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
            "5d-substation-6",
            "5d-medium-electric-pole-6",
            "5d-big-electric-pole-6"
        }
    }
}

speed = speed + 2
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 09
genMediumPoles {
    number = "09",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "i",
    ingredients = {
        {"5d-medium-electric-pole-08", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"electronic-circuit", 2},
        {"low-density-structure", 1}
    },
    pollution = emisions,
    nextUpdate = "5d-medium-electric-pole-09",
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
            "5d-substation-7",
            "5d-medium-electric-pole-7",
            "5d-big-electric-pole-7"
        }
    }
}

speed = speed + 2
modules = modules + 1
energy = energy + 1
emisions = emisions + 15

-- Electric furnace 10
genMediumPoles {
    number = "10",
    subgroup = "energy-medium",
    craftingSpeed = speed,
    moduleSlots = modules + 1,
    energyUsage = energy,
    new = true,
    order = "j",
    ingredients = {
        {"5d-medium-electric-pole-09", 1},
        {"iron-stick", 4},
        {"steel-plate", 2},
        {"electronic-circuit", 2},
        {"low-density-structure", 1}
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
            "5d-substation-8",
            "5d-medium-electric-pole-8",
            "5d-big-electric-pole-8"
        }
    }
}
