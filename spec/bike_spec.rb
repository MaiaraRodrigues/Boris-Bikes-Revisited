require 'bike'

describe Bike do 
    it { is_expected.to respond_to :working?}

    it 'can be reported broken' do
        subject.report_broken

        expect(subject).to be_broken 
    end 

    it 'does not release broken bikes' do
        station = DockingStation.new
        bike = Bike.new
        bike.report_broken
        station.dock bike

        expect { station.release_bike }.to raise_error 'There are no bikes available now'
    end 

end

