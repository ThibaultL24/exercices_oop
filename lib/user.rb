class User
  @@all_users = []

  attr_accessor :email, :age

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << self

    puts "yeaaah ça fonctionne, voilà ton super email : #{email}."
    puts "et voilà ton âge : #{age}"
  end

  def self.all
    @@all_users
  end

  def self.ages
    @@all_users.map(&:age)
  end

  def self.emails
    @@all_users.map(&:email)
  end

  def self.find_by_email(email)
    @@all_users.find { |user| user.email == email }
  end
end
