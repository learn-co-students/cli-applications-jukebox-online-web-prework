# Add your code here
def music(songs)
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
end 
def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end
def list(songs)
  array = ["1. Phoenix - 1901",
"2. Tokyo Police Club - Wait Up",
"3. Sufjan Stevens - Too Much"
"4. The Naked and the Famous - Young Blood",
"5. (Far From) Home - Tiga",
"6. The Cults - Abducted",
"7. Phoenix - Consolation Prizes"
"8. Harry Chapin - Cats in the Cradle",
"9. Amos Lee - Keep It Loose, Keep It Tight"]
end
array
end
def play(songs)
  puts "Please enter a song name or number:"
   num = number.gets.strip
   if num = array[0] 
     puts "playin the song " + array[0] 
     elsif num = array[1] 
     puts "playin the song " + array[1]
     elsif num = array[2] 
     puts "playin the song " + array[2] 
     elsif num = array[3] 
     puts "playin the song " + array[3] 
     elsif num = array[4] 
     puts "playin the song " + array[4] 
     elsif num = array[5] 
     puts "playin the song " + array[5] 
     elsif num = array[6] 
     puts "playin the song " + array[6] 
     elsif num = array[7] 
     puts "playin the song " + array[] 
     elsif num = array[8] 
     puts "playin the song " + array[8]
     elsif num = array[9] 
     puts "playin the song " + array[9]
     
   else 
     puts "Invalid input, please try again"
 end
 
 def exit_jukebox
   puts " Goodbye!"
 end
 
 def run 
   print "Please enter a command:"
   command_input = gets.chomp
   if 
     command_input === 'exit'
     exit_jukebox
   elsif 
   command_input === 'list'
   list(songs)
   run(songs)
   elsif 
   command_input === 'play'
   play(songs)
   run(songs)
   elsif 
   command_input === 'help'
   help
   run(songs)
   
 else 
   puts "enter a valid input"
   run(songs)
 end
 run(songs)
  
  
  