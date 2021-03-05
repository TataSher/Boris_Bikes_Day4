class DockingStation

attr_reader :bikes

 def initialize
   @bikes = []
 end

  def release_bike
     if @bikes.empty?
       raise "No bikes available"
     else
       @bikes.pop
    end
  end

  def dock_bike(bike)
    if @bikes.length == 20
      raise ("No space available")
    else
      @bikes << bike
    end
  end

end

class Bike
  def working?
    true
  end
end
