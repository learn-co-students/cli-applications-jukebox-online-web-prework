def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each.with_index(1) {|song,index|
    puts "#{index}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if(input.to_i.to_s == input)
    if(songs.include?(songs[(input.to_i)-1]))
      puts "Playing #{songs[(input.to_i)-1]}"
    else
      puts "Invalid input, please try again"
    end
  else
    if(songs.include?(input))
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip

  if(input=="exit")
    exit_jukebox
  elsif (input=="list")
    list(songs)
  elsif (input=="play")
    play(songs)
  elsif (input=="help")
    help
  else
  end
end
