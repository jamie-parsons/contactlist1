# Basic Input / Output Assignment:

# Create a file called first_ruby_script.rb
# Inside of that file use the puts and gets ruby commands to play around with user input / script output
# Use an array (Extra Documentation: (http://docs.ruby-lang.org/en/2.0.0/Array.html (Links to an external site.)) to store user input
# Print out the array values
# Bonus Objectives:
#
# Use a while loop(we haven't talked about these yet(http://ruby-doc.org/docs/Tutorial/part_02/while.html (Links to an external site.)) to continue to ask for user input until the user types 'quit'
# Use a case statement for the menu(we haven't talk about these yet(http://www.skorks.com/2009/08/how-a-ruby-case-statement-works-and-what-you-can-do-with-it/ (Links to an external site.))
# If you have 1 - 2 working. Modify your script to be a very basic Contact List (see below for console example):
# Figure out how to delete specific contacts out of the array
# Figure out how to edit a contact in the array
# Figure out how to only display a single name in the array of the users choosing

@contact_list = []

def start_script
  puts "Contacts: Enter (1) to add name, (2) to edit name, (3) to delete name, (4) to print names, (5) display name, (6) to quit:"
  print ">"
  menu
end

def menu
  selection = gets.strip
  case selection
  when "1"
    add
  when "2"
    edit
  when "3"
    delete
  when "4"
    print_
  when "5"
    display
  when "6"
    exit
  else
    puts "Error, please try again!"
    start_script
  end
end

def add
  puts "Please enter the name to add:"
  print ">"
  @contact_list << gets.strip
  start_script
end

def edit
  puts "Please enter the name you want to edit:"
  print ">"
  old_ = gets.strip
  puts "What do you want to change #{old_} to?"
  print ">"
  new_ = gets.strip
  @contact_list.delete(old_)
  @contact_list << new_
  start_script
end

def delete
  puts "Which entry do you want to delete?"
  print ">"
  @contact_list.delete(gets.strip)
  start_script
end

def print_
  @contact_list.each { |contacts| p contacts}
  start_script
end

def display
  puts "Enter the desired index number:"
  print ">"
  i = gets.strip.to_i
  puts @contact_list[i] { |contacts| p contacts}
  start_script
end

start_script
