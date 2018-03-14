require 'pp' 
require_relative 'user' 

user = User.new 'Blake.grma@gmail.com', 'Blake'

pp user

user.save