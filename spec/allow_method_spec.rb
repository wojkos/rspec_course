RSpec.describe 'allow method review' do
  it 'can customize double methods returning value' do
    calculator = double
    allow(calculator).to receive(:add).and_return(10)

    expect(calculator.add).to eq(10)
  end

  it 'can stub methods in real object' do
    arr = [1, 2, 3]
    allow(arr).to receive(:sum).and_return(10)
    expect(arr.sum).to eq(10)

    arr.push(4)
    expect(arr).to eq([1, 2, 3, 4])
  end

  it 'can return multiple returns in sequence' do
    mock_arr = double
    allow(mock_arr).to receive(:pop).and_return(:b, :c, :d)
    expect(mock_arr.pop).to eq(:b)
    expect(mock_arr.pop).to eq(:c)
    expect(mock_arr.pop).to eq(:d)
  end
end
