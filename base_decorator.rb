require './namable'
class Decorator < Namable
  attr_accessor :namable

  def initialize(namable)
    super()
    @nameble = namable
  end

  def correct_name
    @namable.correct_name
  end
end
