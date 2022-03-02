local ok, apairs = pcall(require, "nvim-autopairs")
if not ok then
  return
end

apairs.setup{}
