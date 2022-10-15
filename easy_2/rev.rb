class Transform
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def self.lowercase(text)
    text.downcase
  end

  def uppercase
    self.text.upcase
  end
end



my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')

=begin
ABC
xyz
=end
