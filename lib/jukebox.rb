# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# puts say_hello(users_name)

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
  puts "Please enter a song name or number:" #prompts user
  input = gets.chomp #gets input
  songs.each_with_index do |item, index| #accesses
    new_index = index + 1
    puts "#{new_index}. #{item}"
  if input == "#{item}" #if user enters song name
    puts "Playing #{item}"
  elsif input == "#{new_index}" #if user enters song index
    puts "Playing #{item}"
  else
    puts "Invalid input, please try again" #if user enters anything else
  end
  end
end

def list(songs)
  songs.each_with_index {|item, index|   new_index = index + 1 #start count at 1 instead of 0
  puts "#{new_index}. #{item}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit" do #until exit is inputed, following loop will be executed
    case input
        when "play"
          play(songs)
        when "list"
          list(songs)
        when "help"
          help
      end
      input = gets.chomp
    end
  exit_jukebox
end
