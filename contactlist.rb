contact_list = ["Andy Zdjustaguy", "Bob Loblaw", "Carl Carlisle", "Danny Donkey", "Erin Tknight", "Franz Ferdinand", "Geraldina Ford", "Henrietta Pussycat", "Queen Isabelle of Spain"]
options_list = ["Show contact list", "Add a contact", "Delete a contact", "Edit a contact", "Quit"]
done = false
#loop through an array and print with increment
def show_list(list)
  c = 1
  list.each do |item|
    puts "#{c}. #{item}"
    c += 1
  end
  puts "\n"
end
#main program loop
while done != true do
  puts "\nWhat would you like to do?\n"
  show_list(options_list)
  sel = gets.chomp.to_i
  case sel
  when 1
    #selected show list
    show_list(contact_list)
  when 2
    #add a contact
    puts "\nEnter the name of the individual, please.\n"
    newname = gets.chomp
    contact_list.push(newname)
    puts "\nAdded #{newname} to the contact list.\n"
  when 3
    #delete a contact
    puts "\nWhich number shall we remove?\n"
    todelete = gets.chomp.to_i
    puts "\nRemoving number #{todelete}...\n"
    contact_list.delete_at(todelete - 1)
  when 4
    #edit a contact
    puts "\nWhich number shall we edit?\n"
    toedit = gets.chomp.to_i
    puts "\nPlease enter a new value for #{toedit}. #{contact_list[toedit - 1]}\n"
    newname = gets.chomp
    contact_list.delete_at(toedit - 1)
    contact_list.insert(toedit - 1, newname)
    puts "\nEdited the entry. Thanks!\n"
  when 5
    #quit
    puts "\nOk, quitting. See if I care.\n"
    done = true
  else
    puts "\nPlease enter a valid selection.\n"
  end
end
