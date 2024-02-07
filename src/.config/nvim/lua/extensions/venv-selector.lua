local venv = require("venv-selector")
venv.setup({
  -- Whether to refresh venvs automatically on startup
  auto_refresh = true,
  -- Whether or not it should look for Venv Manager venvs or skip that
  search_venv_managers = true,
  -- Whether or not the plugin will look for venvs in the currently active LSP workspace
  search_workspace = true,
  -- A fixed path where venvs are created (nil if you don't do that)
  path = nil,
  -- Should the plugin try to find a venv in parent paths?
  search = true,
  -- Use venv with the debugger (requires nvim-dap-python, debugpy, nvim-dap)
  dap_enabled = true,
  -- The number of parent directories to go up, before searching all directories below for venvs
  parents = 3,
  -- The name of the venvs to look for
  name = {".venv"},
  -- Recieve a notification when VenvSelect picks a venv
  notify_user_on_activate = true,
})

Api.nvim_create_autocmd('VimEnter', {
  desc = 'Auto select virtualenv Nvim open',
  pattern = '*.py,pyproject.toml',
  callback = function()
    local workspace_venv = Fn.findfile('pyproject.toml', Fn.getcwd() .. ';')
    if workspace_venv ~= '' then
      venv.retrieve_from_cache()
    end
  end,
  once = true,
})
