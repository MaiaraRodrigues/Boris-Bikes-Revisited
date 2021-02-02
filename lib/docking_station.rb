require_relative 'bike'

class DockingStation

    DEFAULT_CAPACITY = 20
    attr_reader :bike, :capacity

    def initialize(capacity=DEFAULT_CAPACITY)
      @capacity = capacity
      @bikes = []
 
    end 

    def release_bike
      raise 'There are no bikes available now' if empty? || (@bikes[-1]).broken?
      @bikes.pop
    end 


    def dock(bike)
      raise 'Docking station is full' if full? 
      @bikes << bike 
      @bike = bike
    end 

    private

    attr_reader :bikes

    def empty?
      @bikes.empty?
    end 

    def full?
      @bikes.count >= @capacity
    end 

end 