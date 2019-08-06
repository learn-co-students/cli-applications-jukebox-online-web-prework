# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  track = gets.strip
  if track.to_i > songs.length
    puts "Invalid input, please try again"
  end
  if track.to_i == 0
    unless songs.include?(track)
      puts "Invalid input, please try again"
    end
  end
  songs.length.times { |index|
    if songs[index] == track || index == track.to_i - 1
     puts songs[index]
     return songs[index]
    end
  }
end

def list(songs)
  songs.length.times { |index|
    puts ("#{index+1}. " + songs[index])
  }
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  if command == "exit"
    exit_jukebox
  end
  if command == "list"
    list(songs)
    run(songs)
  end
  if command == "help"
    help
    run(songs)
  end
  if command == "play"
    pussycat = play(songs)
    puts "Playing " + pussycat
    run(songs)
  end
end