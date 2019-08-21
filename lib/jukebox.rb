# Add your code here
# def say_hello(name)
#   return("Hi #{name}!");
# end
#
# puts("Enter your name:");
# users_name = gets.strip;
#
# puts say_hello(users_name);

def run(songs);
  while true do;
    p("Please enter a command:");
    what_user_typed_in_as_string = gets.strip;
    case(what_user_typed_in_as_string);
    when("play");
      play(songs);
    when("list");
      list(songs);
    when("help");
      help;
    when "exit";
      exit_jukebox;
      break;
    else;
      p("Invalid entry");
    end;
  end;
end;

def play(songs);
  p("Please enter a song name or number:");
  what_user_had_typed_in = gets.strip;
  case # .include? works in case when case is blank instead of what the user had typed in...
  when songs.include?(what_user_had_typed_in);
    p("Playing #{songs.find{|song| song == what_user_had_typed_in}}");
  when  what_user_had_typed_in.to_i <= songs.size && what_user_had_typed_in.to_i > 0;
    p("Playing #{songs[what_user_had_typed_in.to_i-1]}");
  else;
    p("Invalid input, please try again");
  end;
end;

def exit_jukebox;
  p("Goodbye");
end;

def help;
p("I accept the following commands:");
p("- play : lets you choose a song to play");
p("- list : displays a list of songs you can play");
p("- help : displays this help message");
p("- exit : exits this program");
end;

def list(songs);
  return(songs.each_with_index do |song, index| p("#{index+1}. #{song}"); end);
end;
