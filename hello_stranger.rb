
# => Hello, John Q Doe! Nice to have a Master Plumber around.

def greetings(name, hash)
  puts "Hello, #{name.join(" ")}! Nice to have a #{hash[:title] + " " + hash[:occupation]} around!"
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })