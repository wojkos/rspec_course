RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    # [5, 7, 9].each do |val|
    #   expect(val).to be_odd
    # end

    expect([5, 7, 9]).to all(be_odd)
    expect([[], 0, []]).to all(be_empty.or be_zero)
    expect([5, 7, 9]).to all(be <= 10)
  end
end
