# Add your code here

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| 
  puts "#{i+1}. #{song}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_request = gets.strip
  
  if songs.include?(user_request)
    
    puts "Playing #{songs[songs.find_index(user_request)]}"
  elsif user_request.to_i && user_request.to_i < 10 && user_request.to_i > 0
    puts "Playing #{songs[user_request.to_i-1]}"
  else 
    puts "Invalid input, please try again"
  end
end
    
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_command = gets.strip
  if user_command == "play" 
    play(songs)
  elsif user_command == "list"
    list(songs)
  elsif user_command == "help"
    help
  else
    exit_jukebox
  end 
end
  
    