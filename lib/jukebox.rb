def say_help
 puts "Help!"
end

def lists
 
puts "Track"
track_name=gets.track
end

def play
  puts"Song Name"
  song_name= gets.song
 
def exit
  puts"Goodbye"
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

I accept the following commands:
puts help : displays this help message
puts list : displays a list of songs you can play
puts play : lets you choose a song to play
puts exit : exits this program

end

def list

puts Phoenix - 1901
puts Tokyo Police Club - Wait Up
puts Sufjan Stevens - Too Much
puts The Naked and the Famous - Young Blood
puts(Far From) Home - Tiga
puts The Cults - Abducted
puts Phoenix - Consolation Prizes
puts Harry Chapin - Cats in the Cradle
puts Amos Lee - Keep It Loose, Keep It Tight

end 


def play
  puts "Please enter a song name or number:"
  user_response = gets.strip
end

def exit_jukebox
  puts "Goodbye"
end

def run
puts "Please enter a command:"
user_response=gets.chomp
user_response=gets.exit
end




# Add your code here
