
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |ele, index|

    puts "#{index + 1}. #{ele}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
    if user_input.to_i.between?(1,9)
      puts "Playing #{songs[user_input.to_i - 1]}"
    elsif songs.include?(user_input)
      puts user_input
    else
      puts "Invalid input, please try again"
    end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs)


  while true
    puts "Please enter a command:"
    user_input = gets.strip

    case user_input
    when 'list'
      list(songs)

    when 'help'
      help

    when 'play'
      play(songs)

    when 'exit'
      exit_jukebox
      break
    else
      puts "Invalid Entry"
    end
  end


end
