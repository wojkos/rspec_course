RSpec.describe 'matching arguments' do
  it 'can returns diffrent values depending on the argument' do
    three_el_arr = double
    allow(three_el_arr).to receive(:first).with(no_args).and_return(1)
    allow(three_el_arr).to receive(:first).with(1).and_return([1])
    allow(three_el_arr).to receive(:first).with(2).and_return([1, 2])
    allow(three_el_arr).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(three_el_arr.first).to eq(1)
    expect(three_el_arr.first(3)).to eq([1, 2, 3])
    expect(three_el_arr.first(100)).to eq([1, 2, 3])
  end
end
