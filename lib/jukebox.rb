require 'pry'
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

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(my_songs)
my_songs.each_with_index do |song, index|
puts "#{index + 1}. #{song}"
  end
end

def play(my_songs)
puts "Please enter a song name or number:"
users_response = gets.strip
if my_songs.find {|song| song == users_response}
  puts "Playing #{users_response}"
elsif users_response.to_i > 0 && users_response.to_i <= my_songs.size
# my_songs.each_with_index do |song, index|
#     if users_response == song || (users_response.to_i - 1) == index
puts "Playing #{my_songs[users_response.to_i - 1]}"
  else
  puts "Invalid input, please try again:"
    end
  end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
puts "Please enter a command:"
user_input = gets.strip
while user_input !=  "exit"
    case user_input
  when "help"
    help
    puts "Please enter a command:"
    user_input = gets.strip
  when "list"
    list(songs)
    puts "Please enter a command:"
    user_input = gets.strip
  when "play"
    play(songs)
    puts "Please enter a command:"
    user_input = gets.strip
  when "exit"
    puts "Please enter a command:"
    user_input = gets.strip
    else
   puts "Invalid input, please try again"
   user_input = gets.strip
    end
  end
  exit_jukebox
end
