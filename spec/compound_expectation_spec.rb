RSpec.describe 'test' do
  describe 'firetruck' do
    it { is_expected.to start_with('fire') }
    it { is_expected.to end_with('truck') }
  end

  describe 20 do
    it { is_expected.to be_even }
    it { is_expected.to respond_to(:times) }
  end

  describe [4, 8, 15, 16, 23, 42] do
    it { is_expected.to include(42) }
    it { is_expected.to start_with([4, 8, 15]) }
  end
end
