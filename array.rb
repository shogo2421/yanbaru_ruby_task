languages = [
  "puts Hello World!",
  "echo Hello World!",
  "System.out.println(Hello World!)"
]

puts "様々な言語のHello, World"

language =
case language
when Ruby
  languages[0]
when PHP
  languages[1]
when Java
  languages[2]
else
  puts "無効な言語です"
end