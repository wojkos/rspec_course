RSpec.describe 'start_with and end_with matcher' do
  describe 'caterpillar' do
    it 'should check for a substring at the begining or end ' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
      expect(subject).to end_with('pillar')
    end
    it { is_expected.to start_with('cater') }
  end

  describe [:a, :b, :c, :d] do
    it { is_expected.to start_with(:a) }
    it { is_expected.not_to start_with(:b) }
    it { is_expected.to end_with(:d) }
    it { is_expected.to end_with(:c, :d) }
  end
end
