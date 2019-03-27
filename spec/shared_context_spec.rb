RSpec.shared_context 'common' do
  before do 
    @food =[]
  end

  def some_helper_method
    5
  end

  let(:some_var) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance' do
    @food << 'Sushi'
    expect(@food.length).to eq(1)
  end

  it 'can use shared method' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'Second example group' do
  include_context 'common'

  it 'can use outside instance' do
    @food << 'Sushi'
    expect(@food.length).to eq(1)
  end

  it 'can use shared method' do
    expect(some_helper_method).to eq(5)
  end

  it 'can use shared variable' do
    expect(some_var).to eq([1, 2, 3])
  end
end
