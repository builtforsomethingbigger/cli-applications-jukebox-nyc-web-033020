def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : lets you choose a song to play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number"
  input = gets.chomp
  songs.each_with_index do |song, idx|
    if input.to_i == (idx+1) || input == song
      puts "Playing #{song}"
      break
    else
      puts "Invalid input, please try again"
      break
    end

  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  while input != "exit"
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "play"
      play(song)
    when "list"
      list(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
    else
      puts "Invalid input, please try again"
    end
  end
end
