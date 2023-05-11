class Round
  attr_reader :turns, :deck
  def initialize(deck)
    @turns = []
    @deck = deck
  end
  def current_card
    deck.cards[0]
  end
end