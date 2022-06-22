require "./person.rb"

class Teacher < Person
    def initialize (spetialization)
        @spetialization = spetialization
    end
end

services = Teacher.new()
services.can_use_services?
