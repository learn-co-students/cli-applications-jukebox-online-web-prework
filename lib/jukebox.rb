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
  inputs = gets.chomp
  if songs.include?(inputs)
    puts "Playing #{inputs}"
  else
       isNum= Integer(inputs) rescue false 
      if isNum != false && inputs.to_i < songs.length
        puts "Playing #{songs[inputs.to_i - 1]}"
      else
        puts "Invalid input, please try again"
      end
  end
  
  
end

def list(songs)
  count = 1
  songs.each do |el|
    puts "#{count}. #{el}"
    count += 1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = ""
  while input != "exit"
    input = gets.chomp

    if input == "play"
      play(songs)
      elsif input == "help"
      help
      elsif input == "list"
      list(songs)
    end
end
exit_jukebox
end