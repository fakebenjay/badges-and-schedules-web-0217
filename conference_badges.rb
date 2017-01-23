name_sheet = ["Fatso", "Olly", "Millie", "Dickhead"]

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(name_list)
  badge_sheet = []
    name_list.each do |name|
      badge_sheet.push("Hello, my name is #{name}.")
    end
  return badge_sheet
end

def assign_rooms(name_list)
  room_assignments = []
    name_list.each_with_index do |name, index|
      room_assignments.push("Hello, #{name}! You'll be assigned to room #{index + 1}!")
    end
  return room_assignments
end

def printer(name_list)
  badge_sheet = batch_badge_creator(name_list)
  room_assignments = assign_rooms(name_list)

  badge_sheet.each do |badge|
    puts "#{badge}"
  end

  room_assignments.each do |room|
    puts "#{room}"
  end
end

printer(name_sheet)
