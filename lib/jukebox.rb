def say_hello(name)
  puts "Hi #{name}!"
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  index = 0
  while index < songs.size do
    puts "#{index + 1}. #{songs[index]}"
    index += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  index = 0
  while index < songs.size do
    if input == songs[index]
      puts "Playing #{songs[index]}"
      break
    elsif input.to_i == index + 1
      puts "Playing #{songs[index]}"
      break
    else
      puts "Invalid input, please try again"
      break
    end
    index += 1
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  if input != "exit"
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end
    run(songs)
  else
    exit_jukebox
  end
end
