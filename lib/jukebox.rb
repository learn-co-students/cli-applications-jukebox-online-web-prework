require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |name, index|
    if input == "#{index + 1}"
      puts "Playing #{name}"
    elsif input == name
      puts "Playing #{name}"
    else
      puts "Invalid input, please try again."
    end
  end
end

def list(songs_array)
  songs_array.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit"
    case input
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "help"
        help
    end
    input = gets.strip
  end
exit_jukebox
end