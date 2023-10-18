---@type ChadrcConfig

local opt = vim.opt

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

local M = {}

M.ui = {theme = 'catppuccin'}
M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"
return M
