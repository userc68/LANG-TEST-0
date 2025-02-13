io.write("Height: ")
height = io.read()

io.write("Width: ")
width = io.read()

for i = 1, height do 
  for j = 1, width do
    io.write("#")
  end
  print()
end 