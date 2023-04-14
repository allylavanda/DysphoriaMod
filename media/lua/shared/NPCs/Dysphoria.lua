require('NPCs/MainCreationMethods')

local function initTraits()
    local SleepEnabled = (isClient() or isServer()) and getServerOptions():getBoolean("SleepAllowed") and getServerOptions():getBoolean("SleepNeeded")
    local dysphoria = TraitFactory.addTrait("rm_dysphoria", getText("UI_trait_dysphoria"), -2, getText("UI_trait_dysphoria_desc"), false);
end

Events.OnGameBoot.Add(initTraits());