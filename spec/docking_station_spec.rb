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

      it 'docks a bike' do
          bike = Bike.new
          expect(subject.dock(bike)).to eq bike
      end 

      it 'allows to return a bike' do
          bike = Bike.new
          subject.dock(bike)

          expect(subject.bike).to eq bike
      end 

      it { is_expected.to respond_to(:bike) }
  end 
end 

