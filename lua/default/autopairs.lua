local ok, apairs = pcall(require, "nvim-autopairs")
if not ok then
  print "bruh"
  return
end

apairs.setup{}
