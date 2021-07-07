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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  hash = {}
  hash = songs.each_with_index do |item, index|
    updated_index = index.to_i + 1 
    puts "#{updated_index}. #{item}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  hash = {}
  playing = false
  hash = songs.each_with_index do |item, index| 
    updated_index = index.to_i + 1 
    if updated_index == input.to_i 
      puts "Playing #{item}"
      playing = true 
      break
    end 
    if input == item 
      puts "Playing #{item}"
      playing = true 
      break
    end 
  end
  
  if playing == false 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox()
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  while true do 
    if input == "exit"
      exit_jukebox
      break
    elsif input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    else 
      puts "Invalid input."
    end
    puts "Please enter a command:"
    input  = gets.strip
  end
end