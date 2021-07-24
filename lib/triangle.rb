class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def all_sides_positive
    side_one.positive? && side_two.positive? && side_three.positive?
  end

  def triangle_inequality_verify
    side_one+side_two > side_three && side_three+side_two > side_one && side_one+side_three > side_two
  end

  def validate_triangle
    if all_sides_positive && triangle_inequality_verify
      else raise TriangleError
      end
  end


  def kind
    validate_triangle
    if side_one == side_two && side_two == side_three
      :equilateral
    elsif
      side_one == side_two || side_two == side_three || side_one == side_three
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    "Dawg, that ain't even a triangle, dawg..."
  end
end