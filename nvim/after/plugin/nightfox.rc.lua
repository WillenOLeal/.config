local status, nf = pcall(require, "nightfox")
if (not status) then return end

nf.setup({
  options = {
    transparent = true,
  }
})
