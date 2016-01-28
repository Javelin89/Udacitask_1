require_relative 'todolist.rb'

# Creates a new todo list
tasklist = TodoList.new("Aufgabenliste")

# Add four new items
tasklist.add_item("Muell rausbringen")
tasklist.add_item("Waesche waschen")
tasklist.add_item("Playstation spielen")
tasklist.add_item("Einkaufen")

# Print the list
tasklist.print_list
puts

# Delete the first item
tasklist.remove_item(0)

# Print the list
tasklist.print_list
puts

# Delete the second item
tasklist.remove_item(2)

# Print the list
tasklist.print_list
puts

# Update the completion status of the first item to complete
tasklist.change_item_status(0)

# Print the list
tasklist.print_list
puts

# Update the title of the list
tasklist.set_title("Neuer Name")

# Print the list
tasklist.print_list

tasklist.print_to_file