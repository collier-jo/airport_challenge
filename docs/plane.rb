require './docs/airport'

class Plane

  attr_accessor :location

  def initialize(location = nil)
    @location = location
  end 

  def land(airport)
    raise "Plane already landed." if flying? == false 
    airport.dock(self)
    @location = airport
  end

  def takeoff(airport)
    raise "Plane already flying." if flying? == true  
    raise 'The plane is not currently landed at this airport' if @location != airport
    airport.undock(self)
    @location = "sky"
  end 

  def flying?
    @location == "sky"
  end 
  
end 