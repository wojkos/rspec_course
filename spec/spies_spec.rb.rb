RSpec.describe 'spies' do
  let(:animal) { spy('animal') }
  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'reset between examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'have same functionality as double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_receive(:eat_food).exactly(3).times
    expect(animal).to have_receive(:eat_food).with('Sushi').exactly(1).times
  end
end
