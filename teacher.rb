require "./person.rb"

class Teacher < Person
    def initialize (name = "unknown", age, parent_permission: true, spetialization)
        super(age, name, parent_permission)
        @spetialization = spetialization
    end

    def can_use_services?
        true
    end
end

