require "pry"

# songs = [
#   "Phoenix - 1901",
#   "Tokyo Police Club - Wait Up",
#   "Sufjan Stevens - Too Much",
#   "The Naked and the Famous - Young Blood",
#   "(Far From) Home - Tiga",
#   "The Cults - Abducted",
#   "Phoenix - Consolation Prizes",
#   "Harry Chapin - Cats in the Cradle",
#   "Amos Lee - Keep It Loose, Keep It Tight"
# ]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  # songs.each {|s| puts "#{songs.index(s) + 1}. #{s}" }
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end

def play(songs)
  song_hash = {}
  songs.each_with_index do |song, index|
    if !song_hash[(index + 1).to_s]
      song_hash[(index + 1).to_s] = song
    end
  end
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if song_hash.include?(user_input)
    puts "Playing #{song_hash[user_input]}"
  elsif song_hash.value?(user_input)
    puts "Playing #{song_hash[song_hash.key(user_input)]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  while command != "exit" do
    case command
    when "list"
      list(songs)
      run(songs)
    when "play"
      play(songs)
      run(songs)
    when "help"
      help
      run(songs)
    else
      puts "Invalid Command"
      run(songs)
    end
  end
  exit_jukebox
  exit
end