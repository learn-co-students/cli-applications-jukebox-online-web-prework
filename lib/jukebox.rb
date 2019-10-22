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

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end #method

def play(arr)
  puts "Please enter a song name or number:"
  user_choice = gets.strip
  if arr.include?(user_choice.to_s)
    puts "Playing #{user_choice}"
  elsif user_choice.to_i <= arr.length and user_choice.to_i > 0
    puts "Playing #{arr[user_choice.to_i-1]}"
  else
    puts "Invalid input, please try again."
  end #if
end #method

def list(arr)
  counter = 0
  while counter < arr.length do
    puts "#{counter+1}. #{arr[counter]}"
    counter += 1
  end #while
end #method

def exit_jukebox()
  puts "Goodbye"
end #method

def run(songs)
  puts "Please enter a command:"
  user_command = gets.strip
  while user_command != 'exit' do
    if user_command == 'help'
      help()
    elsif user_command == 'play'
      play(songs)
    elsif user_command == 'list'
      list(songs)
    end #if
	puts "Please enter a command:"
	user_command = gets.strip
  end #while
  exit_jukebox()
end #method