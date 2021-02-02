require 'docking_station'

describe DockingStation do 
    it { is_expected.to respond_to :release_bike}
    it { is_expected.to respond_to(:bike) }

  describe '#release_bike' do    

    it 'releases a bike' do
      bike = double(:bike, broken?: false)
      subject.dock bike
      expect(subject.release_bike).to eq bike
    end 
    it 'raises error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'There are no bikes available now'
    end 
    it 'releases working bikes' do
      bike = double(:bike, broken?: false)
      subject.dock bike
      expect(subject.release_bike).to be bike
    end

    it 'does not release broken bikes' do
      bike = double(:bike)
      allow(bike).to receive(:broken?).and_return(true)
      subject.dock bike
      expect {subject.release_bike}.to raise_error 'There are no bikes available now'
    end
 
  end 

  describe '#dock' do
    it 'raises error if dock is full' do
      subject.capacity.times { subject.dock double :bike}
        
      expect { subject.dock double(:bike) }.to raise_error 'Docking station is full'
    end 
  end 
  
  describe 'initalization' do
    subject { DockingStation.new }
    let(:bike) { double :bike }
    it 'has a variable capacity' do
      described_class::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect{ subject.dock(bike) }.to raise_error 'Docking station is full'
    end 

    it  'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end 
  end 
end 

