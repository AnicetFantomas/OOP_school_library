require './base_decorator'

class CapitalDecorator < Decorator
  def correct_name
    @namable.correct_name.capitalize
  end
end
