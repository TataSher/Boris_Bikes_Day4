class DockingStation

attr_reader :bike

  def release_bike
     if @bike == nil
       raise "No bikes available"
     else
       @bike
    end
  end

  def dock_bike(bike)
    if @bike == nil
      @bike = bike
    else
      raise ("No space available")
    end
  end

end

class Bike
  def working?
    true
  end
end
