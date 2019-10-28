# Add your code here
def help  
  #output instructions
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |songs, i|
    puts "#{i+1}. #{songs}"
  end

  #output songs to play
end 

def play(songs)
  #ask to input song or track number
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp 
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox
  #say bye and shutdown
  puts "Goodbye"
end 

def run(songs)
  
  input = ""
  while input 
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break 
    else
      help 
    end 
  end 
end 