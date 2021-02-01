require 'docking_station'

describe DockingStation do 
    it { is_expected.to respond_to :release_bike}

  describe '#release_bike' do    
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end 
      it 'raises eroor when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'There are no bikes available now'
      end 

  describe '#dock' do
      it 'raises error if dock is full' do
        20.times { subject.dock Bike.new }
        expect { subject.dock Bike.new}.to raise_error 'Docking station is full'
      end 

      it 'docks a bike' do
          bike = Bike.new
          expect(subject.bike).to eq @bikes
      end 

      it 'allows to return a bike' do
          bike = Bike.new
          subject.dock(bike)

          expect(subject.bike).to eq @bikes
      end 
  end 

      it { is_expected.to respond_to(:bike) }
  end 
end 

