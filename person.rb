<<<<<<< HEAD
class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
<<<<<<< HEAD
  
=======
require './Namable'

class Person < Namable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
=======
>>>>>>> 8b264764a516805fa2f406aa793a708232778265

  private

  def of_age
    @age >= 18
  end

<<<<<<< HEAD
  def can_use_services?
    of_age || @parent_permission
  end

  def correct_name
    @name
  end
end
>>>>>>> feature2
=======
  public :can_use_services?
  def can_use_services?
    of_age? || @parent_permission
  end
end
>>>>>>> 8b264764a516805fa2f406aa793a708232778265
