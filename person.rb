require"./Namable.rb"

class Person < Namable
    attr_reader :id, :name, :age
    attr_writer :name, :age

    def initialize(name = "unknown", age, parent_permission: true )
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    private
        def is_of_age 
            if @age >= 18
                true
            else 
                false 
            end
        end

    def can_use_services? 
        if is_of_age && @parent_permission
            true
        else
            false
        end
    end

    def correct_name 
        @name
    end
end
