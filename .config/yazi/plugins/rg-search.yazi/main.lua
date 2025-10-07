return {
  entry = function()
    local value = ya.input({
      title = "Search in files:",
      position = { "top-center", y = 2, w = 40 },
    })
    if value then
      ya.manager_emit("shell", {
        "rg --files-with-matches '" .. value .. "' | fzf",
        block = true,
        confirm = true,
      })
    end
  end,
}