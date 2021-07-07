# def say_hello(name)
  "Hi #{name} !"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)

def help
  puts
  "I accept the following commands
  - help :"
