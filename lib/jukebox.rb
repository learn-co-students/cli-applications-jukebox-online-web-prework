require 'pry'
# Add your code here

# def say_hello(name)
#     "Hi #{name}!"
#   end

#   puts "Enter your name:"
#   users_name = gets.strip

#   puts say_hello(users_name)

songs = [
    "Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "Phoenix - Consolation Prizes",
    "Harry Chapman - Cats in the Cradle",
    "Amos Lee - Keep It Loose, Keep It Tight"
]
# if user == "h"
#     card_total += deal_card
#   elsif user == "s"
#     card_total
#   else 
#     invalid_command
#     hit?(card_total)
#   end 

def help
    puts " I accept the following commands:"
    puts " - help : displays this help message"
    puts " - list : displays a list of songs you can play"
    puts " - play : lets you choose a song to play"
    puts " - exit : exits this program"
end

def list(songs)
    songs.each_with_index {
        |item,index|
    }
    puts "#{index +1},#{item}"  
end

def play(songs)
    puts "Please enter a song name or number:"
    songs_name = gets.strip
    #binding.pry
    if songs_name.to_i >= 1 

         if songs_name.to_i > songs.length 
            puts "Invalid input,please try again"
         else 
            binding.pry
            puts "Playing #{songs[songs_name.to_i - 1]}" # get interger to zero for songs name
         end

        elsif songs.include?(songs_name)
             puts "Playing #{songs}"
        else
    end
end



    #if user_input.to_i +1 == user_input.to_i -1 >= songs.length
     #elsif 

        #puts "Invalid input, please try again"

    #puts play(foo)

def exit_jukebox
    puts "Goodbye"
end 

def run(songs)
    puts "Please enter a command:"
    user_data = gets.strip

end

#binding.pry