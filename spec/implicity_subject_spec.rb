RSpec.describe Hash do
  #  subject = Hash.new
  # Rspec automaticly create instance of testing class in subject variable
  
  it 'should star off empty' do
    expect(subject.length).to eq(0)
  end
end