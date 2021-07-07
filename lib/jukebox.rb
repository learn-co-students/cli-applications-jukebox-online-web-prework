def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  if songs.include?(song_choice)
    puts "Playing #{song_choice}"
  elsif  song_choice.to_i <= songs.count && song_choice.to_i > 0 
    puts "Playing #{songs[song_choice.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
  exit 
end 

def run(songs) 
  puts "Please enter a command:"
  user_input = gets.strip 
  if user_input == "exit"
    exit_jukebox
  elsif user_input == "help"
    help
  elsif user_input == "list"
    list(songs)
  elsif user_input == "play"
    play(songs)
  end 
  run(songs)
end 