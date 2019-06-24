require 'pry'
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
  puts "displays this help message"
  puts "displays a list of songs you can play"
  puts "lets you choose a song to play"
  puts "exits this program"
end


def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  valid = false
  songs.each_with_index do |song, index|
    if (choice.to_i - 1 == index)
      puts "Playing #{songs[index]}"
      valid = true
    elsif (choice == song)
      puts "Playing #{choice}"
      valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end




def exit_jukebox
  puts "Goodbye"
end

def run(songs)
 puts help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when 'play'
      puts play(songs)
    when 'help'
      puts help
    when 'list'
      puts list(songs)
    when 'exit'
      break
    end
  end
  exit_jukebox
end
