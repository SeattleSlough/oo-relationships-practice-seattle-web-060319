class Listing

  attr_accessor :city

  @@all = []

  def initialize(city)
    @city = city
    @@all.push(self)
  end

  def self.all
    @@all
  end

def guests
  Trip.all.map do |event|
    if event.listing == self
      event.guest
    end
  end
end

def trip_count
  arr = Trip.all.select {|trip| trip.listing == self}
  arr.length
end

def trips
  Trip.all.select {|trip| trip.listing}
end

def self.find_all_by_city(city)
  Trip.all.select {|trip| trip.listing.city == city}
end

# def self.most_popular
#   arr = Trip.all.map {|trip| trip.listing}
#   frequency = arr.inject(Hash.new(0)) {|h, v| h[v] +=1; h}
#   arr.max_by {|v| frequency|v|}
# end

end
