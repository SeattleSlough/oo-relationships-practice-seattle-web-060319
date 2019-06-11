require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Bob")
guest2 = Guest.new("Michael")
guest3 = Guest.new("Danie")
guest4 = Guest.new("Philip")

listing1 = Listing.new("SF")
listing2 = Listing.new("NYC")
listing3 = Listing.new("Seattle")

trip1 = Trip.new(listing1, guest4)
trip2 = Trip.new(listing1, guest4)
trip3 = Trip.new(listing2, guest3)


Pry.start
