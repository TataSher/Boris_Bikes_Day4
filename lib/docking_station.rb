class DockingStation

attr_reader :bikes
DEFAULT_CAPACITY = 20

 def initialize(capacity = DEFAULT_CAPACITY)
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
    raise ("No space available") if @bikes.length >= DEFAULT_CAPACITY
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
