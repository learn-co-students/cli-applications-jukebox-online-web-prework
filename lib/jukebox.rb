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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list (songs)
  songs.each {|song, location|
  puts songs
  }
end

def play
  puts "Please enter a song name:"
  user_response = gets.chomp
  songs.each { |song, location|
    if user_response == song
      system 'open ' + location
    end
      }
  if user_response == "list"
    list(songs)
    play(songs)
  else
    puts "Invalid input, please try again:"
    play(songs)
  end
  
  def exit_jukebox
    puts "Goodbye"
  end
  
  def run 
     help
  puts "Please enter a command:"
  user_response = gets.chomp
  while user_response != "exit"
    case user_response
      when "help"
        help
        puts "Please enter a command:"
        user_response = gets.chomp
      when "list"
        list(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "play"
        play(songs)
        puts "Please enter a command:"
        user_response = gets.chomp
      when "exit"
        exit_jukebox
      else
        puts "Invalid input, please try again:"
        user_response = gets.chomp
      end
    end

