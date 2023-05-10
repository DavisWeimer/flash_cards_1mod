class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    cards.length
  end

  def cards_in_category(category)
    temp = []
    @cards.each do |card|
      if card.category == category
        temp << card
      end
    end
    temp
  end

end