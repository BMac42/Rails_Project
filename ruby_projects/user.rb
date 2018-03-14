module Destructable
    def destroy(anyobject)
        puts "destroying the object"
    end
end

class User
    include Destructable
    attr_accessor :name, :email
    def initialize(name, email)
        @name = name
        @email = email
    end

    def run
        puts "Currently running"
    end

    def self.id_yourself
        puts "I am a class method"
    end
end

class Buyer < User
    def run
        puts "Buyer class is running"
    end
end

class Seller < User

end

class Admin < User 

end

user = User.new("Doug", "doug@gmail.com")
user.destroy("myname")

buyer = Buyer.new("Prince Douglas", "Douglas@gmail.com")
buyer.run

seller = Seller.new("Jeremy Blakney", "Airdust@gmail.com")
seller.run

admin = Admin.new("Ms Peveler", "Stupidbitch@gmail.com")
admin.run

User.id_yourself