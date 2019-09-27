require 'pry'

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
help


puts "Here is the number and list of songs available in the database: "

def list(song_list)
  song_list.each_with_index do |song , index|
      puts "#{index + 1}." + "#{song}"
  end
end
list(songs)

# def play(my_songs)
#   puts "Please enter a song name or number:"
#   input = gets.strip
  
#   if (1..9).to_a.index(input.to_i) != nil
#     puts "Playing #{my_songs[input.to_i - 1]}"
#   elsif my_songs.index(input) != nil
#     puts "Playing #{input}"
#   else
#     puts "Invalid input, please try again"
#   end
# end
# play(songs)




def play(my_songs)
 new_array = []
  
  puts "Please enter a song name or number:"
  input = gets.strip
  
  my_songs.each_with_index do |song , index|
    new_array.push("#{song}")
      if input.to_i == index || input == song 
        puts "#{new_array[index]}"
      else
        puts "invalid input.please try again"
      end
  # my_songs.map {|i| my_songs.find_index(i) }.compact.min
    # binding.pry
   end
  end


  
  

# "#{index + 1}." +




