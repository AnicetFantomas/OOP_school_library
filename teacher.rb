require './person'
class Teacher < Person
  def initialize(age, spetialization, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission)
    @spetialization = spetialization
  end

  def can_use_services?
    true
  end
end
