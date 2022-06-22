require "./person.rb"
class Teacher < Person
    def initialize (spetialization)
        @spetialization = spetialization
    end

    def can_use_services?
        true
    end
end
