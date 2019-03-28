# falsy values --- false, nil
# truthy values --else
RSpec.describe 'be matcher' do
  it 'can test truthiness' do
    expect(true).to be_truthy
    expect([]).to be_truthy
    expect('string').to be_truthy
    expect(:symbol).to be_truthy
    expect({}).to be_truthy
  end

  it 'can test falsiness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 5 }
    expect(my_hash[:b]).to be(nil)
  end
end
