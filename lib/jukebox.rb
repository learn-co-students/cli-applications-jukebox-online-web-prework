
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
  found = false
  songs.each_with_index do |element, index|
    if input == element || input.to_i == (index + 1)
      puts "Playing #{element}"
      found = true
    end
  end
  if !found
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  exit_ = false
  puts "Please enter a command:"
  input = gets.strip
  unless exit_
    case input
    when "help"
      help
      input = gets.strip
    when "list"
      list(songs)
      input = gets.strip
    when "play"
      play(songs)
      input = gets.strip
    when "exit"
      exit_jukebox
      exit_ = true
    else
      puts "Invalid command. Try again or type help for a list of commands."
      input = gets.strip
    end
  end
end








