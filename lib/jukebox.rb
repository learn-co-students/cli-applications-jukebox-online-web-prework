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
  puts "I accept the following commands: \n
    - help : displays this help message\n
    - list : displays a list of songs you can play\n
    - play : lets you choose a song to play\n
    - exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  songs.each_with_index do |song_name, index|
    new_index = index + 1
    if input == "#{song_name}"
      puts "Playing #{song_name}"
      elsif input == "#{new_index}"
      puts "Playing #{song_name}"
    else 
      puts "Invalid input, please try again"
    end
  end
end

def list(songs)
  songs.each_with_index do |song_name, index|
    new_index = index + 1
    puts "#{new_index}. #{song_name}"
  end
end

def exit_jukebox
  puts "Goodbye"
end


#########################################


def run(songs)
  help
  puts "Please enter a command:"
  user_command = gets.downcase.chomp
  until user_command == "exit" do
    if user_command == "help"
      help
      puts "Please enter a command:"
      user_command = gets.downcase.chomp
    elsif user_command == "list"
      list(songs)
      puts "Please enter a command:"
      user_command = gets.downcase.chomp
    else user_command == "play"
      play(songs)
      puts "Please enter a command:"
      user_command = gets.downcase.chomp
    end
  end
  exit_jukebox
end