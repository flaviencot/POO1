require 'pry'

class User
    attr_accessor :email, :encrypted_password, :age
    @@user_count = 0
    @@all_users = []
  
    def initialize(email_to_save, age_to_save)
      @email = email_to_save
      @age = age_to_save
      @@user_count = @@user_count + 1
      @@all_users << self

    end
    
    def self.all
        return @@all_users
    end

    def change_password(new_password)
      @encrypted_password = encrypt(new_password)
    end
  
    def show_itself
      puts self
    end
  
    def self.count
      return @@user_count
    end

    def self.find_by_email(email_finder)
      user_1 = User.find_by_email(email_finder)
      puts user_1
    end
  
    private
  
    def encrypt(string_to_encrypt)
      return "##ENCRYPTED##"
    end
  
  end

  #binding.pry
  #puts "end of file"