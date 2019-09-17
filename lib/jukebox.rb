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
  if songs.include?(input)
    puts "Playing #{input}"
  elsif input.to_i.to_s == input.strip && input.to_i - 1 <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index{|item, index|
    puts "#{index + 1}. #{item}"
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit" do 
    case input
      when "play"
        play(songs)
      when "list"
        list(songs)
      when "help"
        help
      else 
        "Please enter a valid command:"
      end
      input = gets.strip
  end
  exit_jukebox
end