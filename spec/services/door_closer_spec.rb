describe DoorCloser do
  describe "#call" do
    let!(:door) { Door.create(open: true) }
    subject { described_class.new.call(door_close_time: 0) }

    it "closes the door" do
      subject
      expect(door.reload).to_not be_open
    end
  end
end
