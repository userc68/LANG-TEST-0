print("Height: ")
height = parse(Int, readline())

print("Width: ")
width = parse(Int, readline())

for i in 1:height
  for i in 1:width
    print("#")
  end
  println()
end