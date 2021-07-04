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
    if songs.include?(input)
      puts "Playing #{input}"
    elsif input.to_i >= 1 && input.to_i <= songs.length
      puts "Playing #{songs[input.to_i - 1]}"
    else
      puts "Invalid input, please try again"
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
  user_command = ""
  until user_command == "exit" do
    puts "Please enter a command:"
    user_command = gets.downcase.chomp
    if user_command == "help"
      help
    elsif user_command == "list"
      list(songs)
    else user_command == "play"
      play(songs)
    end
  end
  exit_jukebox
end