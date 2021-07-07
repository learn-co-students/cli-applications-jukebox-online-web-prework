require 'pry'


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

def run(songs)
    while true do
        puts "Please enter a command:"
        user_input = gets.strip
        case user_input
        when "help"
            help 
        when "list"
            list
        when "play" 
            play 
        when "exit" 
            exit 
        else
          puts "Invaild command. We all make mistakes."
        end

        
    end

    
end



# def list(songs)
#     songs.each_with_index {|item, index|
#         songs = index + 1 [item]
#         puts "{index + 1}", "{item}"
#     }
# end 

#

# songs.each 
# songs.each_with_index |index|item|
# +1
# puts "#{index - 1},#{item}"
#binding.pry
#     {|item,index|
#     }
#     puts "#{index -1},#{item}"  

def play(songs) # method with array
    puts "Please enter a song name or number:" # request input from user
    user_input = gets.strip # recieves user input
    if user_input.to_i >=  1 && user_input.to_i <= songs.length  #  true;  input coverts integer check if true or false if greater or equal to one
        puts "Playing #{songs[user_input.to_i - 1]}" # get interger to zero of string for songs name
        
        # elsif songs_name.to_i > songs.length >= 1  # if coverts inputs to interger if interger > array of songs length
        #     puts "Invalid input, please try again" # then puts string
        
        #     #binding.pry
        # end
    elsif songs.include?(user_input)
        puts "Playing #{songs.find{|song| song == user_input}}"
        
    else
        puts "Invalid input, please try again"
    end
end

def exit_jukebox
    #user_data = gets.strip
    puts "Goodbye"
end 

def help
    puts "I accept the following commands:"
    puts " - help : displays this help message"
    puts " - list : displays a list of songs you can play"
    puts " - play : lets you choose a song to play"
    puts " - exit : exits this program"
end

def list(songs)
    songs.each_with_index {|item, index|
        puts "#{index+1}. #{item}"
    }
end