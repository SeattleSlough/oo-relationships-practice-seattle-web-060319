class Guest

attr_accessor :guest_name

  @@all = []

    def initialize(guest_name)
      @guest_name = guest_name
      @@all.push(self)
    end

  def self.all
    @@all
  end

  def trips
    Trip.all.select {|trip| trip.guest == self}
  end

  def listings
   self.trips.map {|trips| trips.listing}
  end

  def trip_count
    self.trips.length
  end

  def self.pro_traveller
   @@all.select {|guest| guest.trip_count > 1}
  end

  def self.find_all_by_name(name)
    @@all.select {|guest| guest.guest_name == name}
  end

end
