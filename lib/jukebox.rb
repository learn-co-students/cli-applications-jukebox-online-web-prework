require "pry"# Add your code here
#songs = [
#  "Phoenix - 1901",
# #  "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.strip

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i == 0
    if songs.include?(input)
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
  else
    if songs[input.to_i]
      puts "Playing #{songs[input.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |x, y|
    puts "#{y+1}. #{x}"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  while true
  puts "Please enter a command:"
  command = gets.strip
    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox
      break
    end
  end
end
