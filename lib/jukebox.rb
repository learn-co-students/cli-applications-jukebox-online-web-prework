require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def play(songs_array)
  puts "Please enter a song name or number:"
  song_entered = gets.chomp
  
  if songs_array.include?(song_entered)
    puts "true"
    puts "Playing #{song_entered}"
  elsif song_entered.to_i != 0 && songs_array[song_entered.to_i - 1]
    puts "Playing #{songs_array[song_entered.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end


def list(songs_array)
  songs_array.each_with_index{ |item, index|
    puts "#{index + 1}. #{item}"
  }
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  help
  puts "Please enter a command:"
  
  user_command = nil
  
  while user_command != "exit" do
    user_command = gets.chomp
    
    case user_command
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      
    end
    
    user_command = nil
  end
  
end