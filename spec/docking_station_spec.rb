require "docking_station"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    describe '#release_bikes' do
      it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
  end

    it 'docks bike' do
    expect(subject).to respond_to(:dock_bike)
  end

   it 'shows bike' do
     expect(subject.dock_bike(:bikes)).to eq([:bikes])
   end

   it "doesn't release bike when bike not available" do
     expect{subject.release_bike}.to raise_error("No bikes available")
   end

   it "doesn't accept more than twenty bikes" do
     20.times{ subject.dock_bike(Bike.new) }
     expect{subject.dock_bike(Bike.new)}.to raise_error("No space available")
   end

end
