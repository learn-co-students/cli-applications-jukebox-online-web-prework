require "pry"

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

def list(songs)
  songs.each_with_index do |track, index|
    puts "#{index +1}. #{track}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if user_response.to_i >= 1 && user_response.to_i <= songs.length
    puts "Playing #{songs[user_response.to_i-1]}"
  elsif songs.include?(user_response)
    puts "Playing #{songs.find{|song| song == user_response}}"
  else
   puts "Invalid input, please try again"
 end
  
# songs.each_with_index do |track, index|
#   if user_response.to_i-1 == index || track.include?(user_response)
#     puts "Playing #{songs[index]}"
#     break
#     else
#     puts "Invalid input, please try again"
#     break
#   end
#   end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
    puts "Please enter a command:"
    input = gets.chomp
    if input == "exit"
      exit_jukebox
    elsif input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    end
end