RSpec.describe 'comparision matcher' do
  it 'allows for comparision wit built-in Ruby operations' do
    expect(10).to be > 5
    expect(1).to be >= 0
  end

  describe 100 do
    it { is_expected.to be > 90 }
    it { is_expected.to be < 1000 }
    it { is_expected.to be > 1 }
    it { is_expected.to be >= 100 }
  end
end
