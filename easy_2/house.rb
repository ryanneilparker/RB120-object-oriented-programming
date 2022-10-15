class House
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def cheaper?(home)
    self.price < home.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1.cheaper?(home2)
puts "Home 2 is more expensive" if home2.cheaper?(home1)

=begin
Home 1 is cheaper
Home 2 is more expensive
=end