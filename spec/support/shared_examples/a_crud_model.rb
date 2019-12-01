shared_examples 'a crud model' do |factory: factory, creates: nil, updates: nil|
  subject { build factory } if factory

  describe "creation" do
    it "Valid" do
      instance = described_class.new(attributes_for(factory))
      expect(instance).to be_valid
    end

    it "Valid attributes" do
      instance = described_class.create(attributes_for(factory))
      expect(instance).to be_valid
    end
  end

  describe "changes" do
    it "Valid" do
      expect(subject).to be_valid
    end

    it "Valid attributes" do
      previously = subject
      result = subject.update(updates)
      expect(subject).to be_valid
    end
  end

  describe "deletion" do
    it "Valid" do
      expect(subject).to be_valid
    end

    it "deleted" do
      d = subject.destroy
      expect(d.destroyed?).to eq(true)
    end
  end

end