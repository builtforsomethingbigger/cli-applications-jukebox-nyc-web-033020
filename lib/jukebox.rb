def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, track|
    puts "#{track + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  number = input.to_i - 1

  if input == "exit"
    exit_jukebox
  elsif number < 0 && songs.include?(input)
    index = songs.index(input)
    puts "Playing #{songs[index]}"
  elsif number >= 0 && songs[number] != nil
    puts "Playing #{songs[number]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye!"
end

def run(songs)
  methods = ["help", "list", "play", "exit"]
  help
  puts "Please enter a command:"
  input = gets.strip

  while !methods.include?(input)
    puts "Please enter a command:"
    input = gets.strip
  end

  case input
  when "help"
    help
  when "play"
    play(songs)
  when "list"
    list(songs)
  when "exit"
    exit_jukebox
    exit
  end

  run(songs)
end
