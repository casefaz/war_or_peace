require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

RSpec.describe Turn do
    describe ':mutually_assured_destruction' do

        it 'exists' do
            card1 = Card.new(:heart, 'Jack', 11)
            card2 = Card.new(:heart, '10', 10)  
            card3 = Card.new(:heart, '9', 9)
            card4 = Card.new(:diamond, 'Jack', 11) 
            card5 = Card.new(:heart, '8', 8)
            card6 = Card.new(:diamond, '8', 8)
            card7 = Card.new(:heart, '3', 3) 
            card8 = Card.new(:diamond, '2', 2)
            deck1 = Deck.new([card1, card2, card5, card8])
            deck2 = Deck.new([card4, card3, card6, card7])
            player1 = Player.new("Megan", deck1)  
            player2 = Player.new("Aurora", deck2)
            turn = Turn.new(player1, player2) 

            expect(turn).to be_an_instance_of(Turn)
        end

        it 'has readable attributes' do
            card1 = Card.new(:heart, 'Jack', 11)
            card2 = Card.new(:heart, '10', 10)  
            card3 = Card.new(:heart, '9', 9)
            card4 = Card.new(:diamond, 'Jack', 11) 
            card5 = Card.new(:heart, '8', 8)
            card6 = Card.new(:diamond, '8', 8)
            card7 = Card.new(:heart, '3', 3) 
            card8 = Card.new(:diamond, '2', 2)
            deck1 = Deck.new([card1, card2, card5, card8])
            deck2 = Deck.new([card4, card3, card6, card7])
            player1 = Player.new("Megan", deck1)  
            player2 = Player.new("Aurora", deck2)
            turn = Turn.new(player1, player2) 

            expect(turn.spoils_of_war).to eq([])
        end 

        it 'is a type of turn' do
            card1 = Card.new(:heart, 'Jack', 11)
            card2 = Card.new(:heart, '10', 10)  
            card3 = Card.new(:heart, '9', 9)
            card4 = Card.new(:diamond, 'Jack', 11) 
            card5 = Card.new(:heart, '8', 8)
            card6 = Card.new(:diamond, '8', 8)
            card7 = Card.new(:heart, '3', 3) 
            card8 = Card.new(:diamond, '2', 2)
            deck1 = Deck.new([card1, card2, card5, card8])
            deck2 = Deck.new([card4, card3, card6, card7])
            player1 = Player.new("Megan", deck1)  
            player2 = Player.new("Aurora", deck2)
            turn = Turn.new(player1, player2)

            expect(turn.type).to eq(:mutually_assured_destruction)
        end
        
        it 'has a winner' do
            card1 = Card.new(:heart, 'Jack', 11)
            card2 = Card.new(:heart, '10', 10)  
            card3 = Card.new(:heart, '9', 9)
            card4 = Card.new(:diamond, 'Jack', 11) 
            card5 = Card.new(:heart, '8', 8)
            card6 = Card.new(:diamond, '8', 8)
            card7 = Card.new(:heart, '3', 3) 
            card8 = Card.new(:diamond, '2', 2)
            deck1 = Deck.new([card1, card2, card5, card8])
            deck2 = Deck.new([card4, card3, card6, card7])
            player1 = Player.new("Megan", deck1)  
            player2 = Player.new("Aurora", deck2)
            turn = Turn.new(player1, player2)
            winner = turn.winner
            
            expect(turn.winner).to eq("No Winner")
        end 

        it 'piles the cards' do
            card1 = Card.new(:heart, 'Jack', 11)
            card2 = Card.new(:heart, '10', 10)  
            card3 = Card.new(:heart, '9', 9)
            card4 = Card.new(:diamond, 'Jack', 11) 
            card5 = Card.new(:heart, '8', 8)
            card6 = Card.new(:diamond, '8', 8)
            card7 = Card.new(:heart, '3', 3) 
            card8 = Card.new(:diamond, '2', 2)
            deck1 = Deck.new([card1, card2, card5, card8])
            deck2 = Deck.new([card4, card3, card6, card7])
            player1 = Player.new("Megan", deck1)  
            player2 = Player.new("Aurora", deck2)
            turn = Turn.new(player1, player2)

            turn.pile_cards
            expect(player1.deck.cards).to eq([card8])
            expect(player2.deck.cards).to eq([card7])
        end

        it 'awards spoils' do
            card1 = Card.new(:heart, 'Jack', 11)
            card2 = Card.new(:heart, '10', 10)  
            card3 = Card.new(:heart, '9', 9)
            card4 = Card.new(:diamond, 'Jack', 11) 
            card5 = Card.new(:heart, '8', 8)
            card6 = Card.new(:diamond, '8', 8)
            card7 = Card.new(:heart, '3', 3) 
            card8 = Card.new(:diamond, '2', 2)
            deck1 = Deck.new([card1, card2, card5, card8])
            deck2 = Deck.new([card4, card3, card6, card7])
            player1 = Player.new("Megan", deck1)  
            player2 = Player.new("Aurora", deck2)
            turn = Turn.new(player1, player2)
            winner = turn.winner
            
            turn.pile_cards
            turn.award_spoils(winner)
            expect(player1.deck.cards).to eq([card8])
            expect(player2.deck.cards).to eq([card7])
        end 

    end
end