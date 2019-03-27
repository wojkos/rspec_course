RSpec.describe Array do
  it 'by default are empty' do
    expect(subject.length).to eq(0)
  end

  it 'check if the lenght change' do
    subject.push('example')
    expect(subject.length).to eq(1)
  end
end
