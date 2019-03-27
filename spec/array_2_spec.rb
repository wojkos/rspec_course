RSpec.describe Array do
  subject(:sally) { %w[first second] }

  it 'should have 2 items' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it 'in second example subject back to previous state' do
    expect(subject.length).to eq(2)
  end
end
