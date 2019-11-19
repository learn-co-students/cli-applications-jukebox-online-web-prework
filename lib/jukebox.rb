# Add your code here
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
 puts " - help : displays this help message"
puts  "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end 


  
def list(songs_array)
  songs_array.each_with_index {|item, index| puts " #{index + 1}. #{item}"}
end

  def play(songs_array)
     puts "Please enter a song name or number:"
     user_input = gets.strip
     if songs_array.include? user_input
      puts "Playing #{user_input}"
      elsif user_input.to_i>=1 and user_input.to_i < songs_array.length
    puts "#{songs_array[user_input.to_i-1]}"
    else 
      puts "Invalid input, please try again"
    end 
  end 
  
  def exit_jukebox 
    puts "Goodbye"
  end 
  
  def run(songs_array)
    puts "Please enter a command:" 
    user_input = gets.strip
    if user_input == "play"
      play(songs_array)
    elsif user_input == "list"
      list(songs_array)
    elsif user_input == "help"
      help
    end
    exit_jukebox
  end 
  
