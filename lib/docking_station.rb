class DockingStation

attr_reader :bikes

 def initialize
   @bikes = []
 end

  def release_bike
    empty?
    @bikes.pop
  end

  def dock_bike(bike)
    full?
    @bikes << bike
  end

  private

  def full?
    raise ("No space available") if @bikes.length >= 20
  end

  def empty?
    raise "No bikes available" if @bikes.empty?
  end
end

class Bike
  def working?
    true
  end
end
