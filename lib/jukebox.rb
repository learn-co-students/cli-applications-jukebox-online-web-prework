def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  
  songs.each_with_index do |song_name, index| 
    track = index + 1
    puts "#{track}. #{song_name}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selection = gets.strip
  
  songs.each_with_index do |song_name, index|
    if user_selection == (index+1).to_s  || user_selection == song_name
        puts"Playing #{song_name}"
        return
    end
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
  return "exit"
end

def run(songs)
  puts "Please enter a command:" 
  command = gets.strip
  
  if command == "help"
    help
  elsif command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "exit"
    exit_jukebox
  else
      "Error: Invalid command #{command}"
  end
end
