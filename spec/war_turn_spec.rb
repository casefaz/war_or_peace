require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

RSpec.describe Turn do
describe ':war turn' do
    it 'has turn types' do 
        card1 = Card.new(:heart, 'Jack', 11)
        card4 = Card.new(:heart, '10', 10)  
        card2 = Card.new(:heart, '9', 9)
        card3 = Card.new(:diamond, 'Jack', 11) 
        card5 = Card.new(:heart, '8', 8)
        card6 = Card.new(:diamond, 'Queen', 12)
        card7 = Card.new(:heart, '3', 3) 
        card8 = Card.new(:diamond, '2', 2) 
        deck1 = Deck.new([card1, card2, card5, card8])
        deck2 = Deck.new([card3, card4, card6, card7])
        player1 = Player.new("Megan", deck1)  
        player2 = Player.new("Aurora", deck2)
        turn = Turn.new(player1, player2)
        
        expect(turn.type).to eq(:war)
    end

#     it 'has a winner'do
#         card1 = Card.new(:heart, 'Jack', 11)
#         card4 = Card.new(:heart, '10', 10)  
#         card2 = Card.new(:heart, '9', 9)
#         card3 = Card.new(:diamond, 'Jack', 11) 
#         card5 = Card.new(:heart, '8', 8)
#         card6 = Card.new(:diamond, 'Queen', 12)
#         card7 = Card.new(:heart, '3', 3) 
#         card8 = Card.new(:diamond, '2', 2) 
#         deck1 = Deck.new([card1, card2, card5, card8])
#         deck2 = Deck.new([card3, card4, card6, card7])
#         player1 = Player.new("Megan", deck1)  
#         player2 = Player.new("Aurora", deck2)
#         turn = Turn.new(player1, player2)
#         winner = turn.winner

#         expect(turn.winner).to eq(player2)
# end

end
end