outputs = [
  %Q[puts "Hello World!"],
  %Q[echo "Hello World!";],
  %Q[System.out.println("Hello World!");]
]

languages = [
  "Ruby",
  "PHP",
  "Java"
]

puts "様々な言語のHello, World"
puts
languages.each do |language|
  case language
  when "Ruby"
    puts "#{language}:#{outputs[0]}"
  when "PHP"
    puts "#{language}:#{outputs[1]}"
  when "Java"
    puts "#{language}:#{outputs[2]}"
  end
end