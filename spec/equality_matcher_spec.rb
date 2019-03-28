RSpec.describe 'equality matcher' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'testing for values and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'testing for values including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }
    it 'cares about object identity' do
      # equal == be
      expect(c).to eql(d)
      expect(c).not_to equal(d)
      expect(d).not_to equal(c)
      expect(d).not_to be([1, 2, 3])
      expect(e).to be(c)
    end
  end
end
