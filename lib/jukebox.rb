require 'pry'

def get_user_input
  gets.chomp
end

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

def play(songs)
  puts "Please enter a song name or number:"
  
  input = get_user_input
  
  if input.to_i >= 1 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{songs.find {|song| song == input}}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |info, index|
    puts (index + 1).to_s + ". " + info
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  
  
  input = get_user_input

  
  if input == "exit" 
    exit_jukebox
  elsif input == "help"
    help
  elsif input == "list"
    list(songs)
  elsif input == "play"
    play(songs)
  end
end