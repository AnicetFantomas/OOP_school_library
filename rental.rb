class Rental
  attr_accessor :date, :person, :book

  def initialize(date, book, person)
    @date = date
    book.rentals << self
    @person = person
    person.rentals << self
  end

  def add_person(person)
    @person = person
    person.rentals.push(self) unless person.rentals.includes?(self)
  end
end
