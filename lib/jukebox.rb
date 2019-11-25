songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
  puts "I accept the following commands:"
  puts " - help : displays this help message "
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end  

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if user_response.to_i == 0
    if songs.include?(user_response)
      puts "Playing #{user_response}"
    else 
      puts "Invalid input, please try again"
    end  
  else   
    if songs[user_response.to_i]
      puts "Playing #{songs[user_response.to_i - 1]}"
    else
      puts "Invalid input, please try again"
    end
  end   
end   

def list(songs)
songs.each_with_index do |x, y| 
 puts "#{y+1}. #{x}"
end 
end  

def exit_jukebox
  puts "Goodbye"
end   

def run(songs)
  while true do 
  puts "Please enter a command:"
  capture = gets.strip 

  if capture == "help"
    help 
  elsif capture == "list"
    list(songs)
  elsif capture == "play" 
    play(songs)
  else 
    exit_jukebox
    break
  end
  help
end
end   
  
  
  
  
  
  
  
  
  
  
  
  
  
