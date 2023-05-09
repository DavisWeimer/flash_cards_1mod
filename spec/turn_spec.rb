require './lib/card'
require './lib/turn'

RSpec.describe Card do
    it 'guess' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
        expect(turn.guess).to eq(card.answer)
    end
    
    it 'card' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
        expect(turn.card).to eq(card)
    end

    it 'will check if guess is correct?' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
        expect(turn.correct?).to eq true
    end
    
    it 'feedback correct!' do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
        expect(turn.feedback).to eq("Correct!")
    end

end