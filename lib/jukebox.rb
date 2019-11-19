def help
  puts 'I accept the following commands:'
  puts '- help : displays this help message'
  puts '- list : displays a list of songs you can play'
  puts '- play : lets you choose a song to play'
  puts '- exit : exits this program'
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts 'Please enter a song name or number:'
  song = gets.strip
  if songs.include?(song)
    puts "Playing #{song}"
  elsif 0 < song.to_i and song.to_i < songs.length + 1
    puts "Playing #{songs[song.to_i - 1]}"
  else
    puts 'Invalid input, please try again'
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run(songs)
  while true do
    puts 'Please enter a command:'
    command = gets.strip
    if command == 'help'
      help
    elsif command == 'list'
      list(songs)
    elsif command == 'play'
      play(songs)
    elsif command == 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end