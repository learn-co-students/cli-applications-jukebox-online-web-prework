require 'pry'

def help
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def find_song songs, song
  songs.select {|s| s.match(song)}
end

def play songs
  puts "Please enter a song name or number:"
  i = gets.chomp
  song = find_song songs, i
  nth_song = songs[i.to_i]

  song = song || nth_song
  song = false if song == []
  if song
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def list songs
  songs.each_with_index {|song, idx| puts "#{idx + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def prompt
  puts "Please enter a command:"
end

def run songs
  help

  while true
    prompt
    command = gets.chomp
    case command
    when 'exit'
      exit
      break
    when 'help'
      help
    when 'play'
      play
    when 'list'
      list
    end
  end
end
