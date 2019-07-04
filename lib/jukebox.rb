# Add your code here  # does't actually come with array?
require "pry"
# binding.pry
# why doesn't the test for list_songs come before the play?
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:" # this needs to be here
  input = gets.chomp
  if songs.include?(input)
    #song = songs.find {|s| s == input} # don't actually need this
    puts "Playing #{input}"
  elsif (0..songs.length).include?(input.to_i - 1)
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each.with_index(1) {|s, i| puts "#{i}. #{s}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit" do #until exit is inputed, following loop will be executed
    case input
        when "play"
          play(songs)
        when "list"
          list(songs)
        when "help"
          help
      end
      input = gets.chomp
    end
  exit_jukebox
end
#
# def run(songs)
#   help
#   user_command = ""
#   until user_command == "exit" do
#     puts "Please enter a command:"
#     user_command = gets.downcase.chomp
#     if user_command == "help"
#       help
#     elsif user_command == "list"
#       list(songs)
#     else user_command == "play"
#       play(songs)
#     end
#   end
#   exit_jukebox
# end
