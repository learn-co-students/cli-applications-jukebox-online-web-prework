# Add your code here
def "CLI Jukebox"
  def help
    puts help : displays this help message
    puts list : displays a list of songs you can play
    puts play : lets you choose a song to play
    puts exit : exits this program

  end

  def list
    :each_with_index {
    puts list of songs you can play
    songs => [1."Phoenix - 1901", 2. "Tokyo Police Club - Wait Up", 3. "Sufjan Stevens - Too Much", 4. "The Naked and the Famous - Young Blood",
      5. "(Far From) Home - Tiga", 6. "The Cults - Abducted", "Phoenix - Consolation Prizes", 7. "Harry Chapin - Cats n the Cradle",
      8. "Amos Lee - Keep It Loose, Keep It Tight"]
    }
  end

  def play
    puts "Please enter a song name or number:"
    if "user's response is valid" do
      puts "Playing <song name>"
      if "user's response is invalid" do
        puts "Invalid input, please try again"
    end

    def exit
      puts "Goodbye"

    end

    def run
      if "user selects Help use help.method" do
        if "user selects List print the list of songs to play" do
          if "user selects Play prompt user to select a song" do
            if "user selects exit put 'Goodbye' and exit application"

            end
          end
