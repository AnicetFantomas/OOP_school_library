require './base_decorator'

class CapitalDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
