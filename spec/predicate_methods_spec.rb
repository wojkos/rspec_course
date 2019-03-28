RSpec.describe 'predicete matcher' do
  it 'can be tested with Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end
  it 'can be tested with predicate matcher' do
    expect(16 / 2).to be_even
    expect(15 / 3).to be_odd
    expect(2 - 2).to be_zero
    expect([]).to be_empty
  end
end
