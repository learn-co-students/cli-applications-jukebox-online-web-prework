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
 puts /- help : displays this help message/
 puts /- list : displays a list of songs you can play/ 
 puts /- play : lets you choose a song to play/ 
 puts /- exit : exits this program/ 
  
end

  def list(songs)
  songs.each_with_index { |song, index|
    puts "#{index + 1 }. #{song}"
}
end 
def exit_jukebox
  puts "Goodbye!"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if songs[input.to_i - 1] && input.to_i - 1 >= 0
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.include?(input)
    puts "Playing #{songs.find{|song| song == input}}"
  else
    puts "Invalid input, please try again"
  end
end

 def run(songs)
  while true
    puts "Please enter a command:"
    input = gets.chomp
    case input
      when "help"
        help
      when "exit"
        exit_jukebox
        p "exit"
        break
      when "list"
        list(songs)
      when "play"
        play(songs)
      else
        puts "Invalid command, try again."
    end
  end
end	
help	