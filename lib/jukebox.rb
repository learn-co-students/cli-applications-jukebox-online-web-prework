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

def list(songs) 
  songs.each_with_index { |song, index| puts "#{index +1}. #{song}" }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
   input = false 
   songs.each_with_index do |song, index|
    if (user_input.to_i - 1 == index)
       puts "Playing #{songs[index]}"
       input = true 
     elsif (user_input == song)
       puts "Playing #{user_input}"
        input = true
     end
   end
    puts "Invalid input, please try again" if input == false
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)
 puts help
 loop do
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when 'play'
      puts play(songs)
    when 'help'
      puts help
    when 'list'
      puts list(songs)
    when 'exit'
      break
    end
  end
  exit_jukebox
end

