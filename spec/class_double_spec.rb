# class Deck
#   def self.build
#     # Some buisnes logic
#   end
# end

class CardGame
  attr_reader :cards
 
  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implemend methods from class definition' do
    deck_klass = class_double('Deck', build: %w[Ace Queen]).as_stubbed_const
    # as_stubbed_const use this double always wen call Deck iven class not implemented
    subject.start
    expect(subject.cards).to eq(%w[Ace Queen])
  end
end
