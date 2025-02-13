number_of_point = parse(Int, ARGS[1])

global not_inside_triangle = 0

for i in 1:number_of_point
  global not_inside_triangle
  x = rand()
  y = rand()
  if x <= 0.5
    if ( 3 * x^2 ) < y^2
      not_inside_triangle = not_inside_triangle + 1
    end
  else
    if 3 * (x - 1)^2 < y^2
      not_inside_triangle = not_inside_triangle + 1
    end
  end
end

inside_triangle = number_of_point - not_inside_triangle

println("number_of_point : $number_of_point")
println("inside_triangle : $inside_triangle")
println("not_inside_triangle : $not_inside_triangle")

println("==========================================================================================")

println((inside_triangle * 4) / number_of_point)
