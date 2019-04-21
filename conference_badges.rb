# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(guests)
  badge_message = []
  guests.each do |guest|
    message = badge_maker(guest)
    badge_message << message
  end
  badge_message
end

def assign_rooms(room_assignments)
  room_num = 1
  room_message = []
  room_assignments.each do |guest|
    room_message << "Hello, #{guest}! You'll be assigned to room #{room_num}!"
    room_num += 1
  end
  room_message
end

def printer(guests)
  badge_message = batch_badge_creator(guests)
  badge_message.each do |msg|
    puts msg
  end
  room_message = assign_rooms(guests)
  room_message.each do |msg|
    puts msg
  end
end
