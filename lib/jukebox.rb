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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs_array)
  message = nil
  puts "Please enter a song name or number:"
  choice = gets.strip
  songs_array.each_with_index do |song, index|
    index += 1
    if choice == song || choice == index.to_s
      message = "Playing #{song}"
    end
  end 
  message ||= "Invalid input, please try again"
  puts message
end


def list(songs_array)
  songs_array.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs_array)
  command = ""
  while command 
    puts "Please enter a command:"
    command = gets.strip
    case command
      when 'help'
        help
      when 'list'
        list(songs_array)
      when 'play'
        play(songs_array)
      when 'exit'
        exit_jukebox
        break
      else 
        command ="nothing"
    end
  end 
end

