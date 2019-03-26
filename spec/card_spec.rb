class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }
  # let! = before each examples

  it 'has a rank and rank can be change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparision = 'Spade'
    expect(card.suit).to eq(comparision), "Custom error message:\nExpected: #{comparision} but got: #{card.suit}"
  end
end

