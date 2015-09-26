class User

  CONSTANT = "this should never change"
  attr_accessor :name, :age, :email, :friends

  def initialize name, age, email
    @name = name
    @age = age
    @email = email
    @friends = []
  end

  def to_s
    "My name is #{@name}. my email is #{@email}"
  end

end

harry = User.new("Harry Potter", 16, "potter@hogwarts.com")
hermione = User.new("Hermione Granger", 16, "granger@hogwarts.com")
ron = User.new("Ron Weasley", 16, "rWeasley@hogwarts.com")

harry.friends << hermione
harry.friends << ron

puts harry.friends

hermione.friends << harry
hermione.friends << ron