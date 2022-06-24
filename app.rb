require './person'
require './book'
require './student'
require './teacher'
require './rental'

class App 
    def initialize
        @my_books = []
        @my_rentals = []
        @people = []
      end

      def show_menu
        puts "Welcome to School Library App!\n\n"
        puts 'Please choose an option by entering a number:'
        puts '1 - List all books'
        puts '2 - List all people'
        puts '3 - Create a person'
        puts '4 - Create a book'
        puts '5 - Create a rental'
        puts '6 - List all rentals for a given person id'
        puts "7 - Exit\n\n"
        gets.chomp
      end

      def run
        choice = show_menu
        case choice
        when '1'
          action_list_books
        when '2'
          action_list_people
        when '3'
          create_person
        when '4'
          create_book
        when '5'
          create_rental
        when '6'
          list_rental
        else
          puts 'Thanks You, Bye Bye...'
          exit
        end
    end   
    
    def list_books
        @my_books.each_with_index do |x, index|
          puts "#{index}) Title: \"#{x.title}\", Author: #{x.author} "
        end
      end

      def list_people
        @people.each_with_index do |x, index|
          puts "#{index}) [#{x.class.name}] Name: #{x.name}, ID: #{x.id}, Age: #{x.age}"
        end
      end

      def action_list_books
        puts 'Please create a book' if list_books.length <= 0
        puts 'Press enter to continue ...'
        gets.chomp
        run
      end

      def action_list_people
        puts 'Please create a book' if list_people.length <= 0
        puts "\n\nPress any key to continue"
        gets
        run
      end

      def my_permission(my_char)
        case my_char
        when 'N'
          false
        when 'Y'
          true
        end
      end

      def create_teacher
        print 'Age: '
        age = gets.chomp
        print 'Name: '
        name = gets.chomp
        print 'Specialization: '
        specialization = gets.chomp
        teacher = Teacher.new(age, name, nil, specialization)
        @people.push(teacher)
      end

      def create_student
        print 'Age: '
        age = gets.chomp
        print 'Name: '
        name = gets.chomp
        print 'Has parent permission? [Y/N]: '
        permission = gets.chomp
        student = Student.new(age, name, my_permission(permission), nil)
        @people.push(student)
      end

      def create_person
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        person_type = gets.chomp
        case person_type
        when '1'
          create_student
        when '2'
          create_teacher
        end
        puts "Person created successfully\n"
        gets
        run
      end

      
    
end