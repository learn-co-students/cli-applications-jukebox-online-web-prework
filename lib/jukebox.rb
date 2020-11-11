# Add your code here
# def say_hello(name)
#     "Hi #{name}!"
#   end
   
#   puts "Enter your name:"
#   users_name = gets.strip
   
#   puts say_hello(users_name)
require 'pry'
def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
    songs.each_with_index do |song, i|
        # binding.pry
        puts "#{i+1}. #{song}"
    
    end
end

def play(songs)
    puts "Please enter a song name or number:"
    response = gets.strip
    
    if response.to_i >= 1 && response.to_i <= songs.length
      puts "Playing #{songs[response.to_i-1]}"
    elsif songs.include?(response)
      puts "Playing #{songs.find{|song| song == response}}"
    else
      puts "Invalid input, please try again" 
    end   
  end

#   def play(array)
#     puts "Please enter a song name or number: "
#     song_request = gets.strip
#     if array.include?(song_request)
#       puts "Playing #{song_request}"
#     elsif (1..9).include?(song_request.to_i)
#       index_of_song = (song_request.to_i - 1)
#       puts "Playing #{array[index_of_song]}"
#     else
#       puts "Invalid input, please try again"
#     end
#   end

  def exit_jukebox
    puts "Goodbye"
  end

  def run(songs)
    puts "Please enter a command:"
    command = gets.strip 
    if command == "exit"
      exit_jukebox
    elsif command == "help"
      help 
    elsif command == "list"
      list(songs) 
    elsif command == "play"
      play(songs)
    else 
      puts "not a valid command"
    end 
  end 