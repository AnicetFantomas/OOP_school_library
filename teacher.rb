require "./person.rb"
class Teacher < Person
    def initialize (spetialization)
        @spetialization = spetialization
    end
end

services = Teacher.new("")
puts services.can_use_services?
