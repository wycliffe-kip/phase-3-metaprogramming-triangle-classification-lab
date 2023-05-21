class Triangle
  # write code here
  def initialize(length_a, length_b, length_c)
    @length_a = length_a
    @length_b = length_b
    @length_c = length_c
  end 

  def kind
    validate_triangle 
    if @length_a == @length_b && @length_b == @length_c
      :equilateral
    elsif @length_a == @length_b || @length_a == @length_c || @length_b == @length_c
      :isosceles
    else 
      :scalene
    end 
  end 

  private 
  def validate_triangle
    triangle_sides = [@length_a, @length_b, @length_c]
    unless triangle_sides.all? { |length| length > 0 } && triangle_sides.max < (triangle_sides.sum - triangle_sides.max)
      raise TriangleError, "Invalid triangle"
    end 
  end 
    
  class TriangleError < StandardError
  end 
end
