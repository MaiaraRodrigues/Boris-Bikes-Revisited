require_relative 'bike'

class DockingStation
 
    attr_reader :bike

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
        @bikes.count >= 20   
    end 

end 