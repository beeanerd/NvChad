require("neorg").setup {
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
                workspaces = {
                    notes = "~/notes",
                },
                default_workspace = "notes"
            },
        },
        ["core.highlights"] = {},
        ["core.mode"] = {},
        ["core.integrations.telescope"] = {},
        ["core.summary"] = {},
        ["core.export"] = {},
        ["core.autocommands"] = {},
    },
}
