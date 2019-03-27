RSpec.describe Hash do
  subject(:alias_for_subject) do
    {a: 1, b: 2}
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
  end
end
