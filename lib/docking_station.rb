require_relative 'bike'

class DockingStation

    DEFAULT_CAPACITY = 20
    attr_reader :bike, :DEFAULT_CAPACITY

    def initialize
        @bikes = []
    end 

    def release_bike
        fail 'There are no bikes available now' if empty?
        @bikes.pop
    end 


    def dock(bike)
        fail 'Docking station is full' if full?
        @bikes << bike 
    end 

    private

    def empty?
        @bikes.empty?
    end 

    def full?
        @bikes.count >= DEFAULT_CAPACITY  
    end 

end 