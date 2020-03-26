require 'pry'

def help
  puts "Please enter a command:"
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  valid = false
  songs.each_with_index do |song, index|
    if (choice.to_i - 1 == index)
      puts "Playing #{songs[index]}"
      valid = true
    elsif (choice == song)
      puts "Playing #{choice}"
      valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end

def list(songs)
  songs.each_with_index{|song, index| puts "#{index + 1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  loop do
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when 'play'
      play(songs)
    when 'help'
      help
    when 'list'
      list(songs)
    when 'exit'
      break
    end
  end
  exit_jukebox
end
