require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/wargame'

def card_deck
@cards = []
@cards << @card1 = Card.new(:spade, '2', 2)
@cards << @card2 = Card.new(:spade, '3', 3)
@cards << @card3 = Card.new(:spade, '4', 4)
@cards << @card4 = Card.new(:spade, '5', 5)
@cards << @card5 = Card.new(:spade, '6', 6)
@cards << @card6 = Card.new(:spade, '7', 7)
@cards << @card7 = Card.new(:spade, '8', 8)
@cards << @card8 = Card.new(:spade, '9', 9)
@cards << @card9 = Card.new(:spade, '10', 10)
@cards << @card10 = Card.new(:spade, 'Jack', 11)
@cards << @card11 = Card.new(:spade, 'Queen', 12)
@cards << @card12 = Card.new(:spade, 'King', 13)
@cards << @card13 = Card.new(:spade, 'Ace', 14)

@cards << @card14 = Card.new(:heart, '2', 2)
@cards << @card15 = Card.new(:heart, '3', 3)
@cards << @card16 = Card.new(:heart, '4', 4)
@cards << @card17 = Card.new(:heart, '5', 5)
@cards << @card18 = Card.new(:heart, '6', 6)
@cards << @card19 = Card.new(:heart, '7', 7)
@cards << @card20 = Card.new(:heart, '8', 8)
@cards << @card21 = Card.new(:heart, '9', 9)
@cards << @card22 = Card.new(:heart, '10', 10)
@cards << @card23 = Card.new(:heart, 'Jack', 11)
@cards << @card24 = Card.new(:heart, 'Queen', 12)
@cards << @card25 = Card.new(:heart, 'King', 13)
@cards << @card26 = Card.new(:heart, 'Ace', 14)

@cards << @card27 = Card.new(:diamond, '2', 2)
@cards << @card28 = Card.new(:diamond, '3', 3)
@cards << @card29 = Card.new(:diamond, '4', 4)
@cards << @card30 = Card.new(:diamond, '5', 5)
@cards << @card31 = Card.new(:diamond, '6', 6)
@cards << @card32 = Card.new(:diamond, '7', 7)
@cards << @card33 = Card.new(:diamond, '8', 8)
@cards << @card34 = Card.new(:diamond, '9', 9)
@cards << @card35 = Card.new(:diamond, '10', 10)
@cards << @card36 = Card.new(:diamond, 'Jack', 11)
@cards << @card37 = Card.new(:diamond, 'Queen', 12)
@cards << @card38 = Card.new(:diamond, 'King', 13)
@cards << @card39 = Card.new(:diamond, 'Ace', 14)

@cards << @card40 = Card.new(:club, '2', 2)
@cards << @card41 = Card.new(:club, '3', 3)
@cards << @card42 = Card.new(:club, '4', 4)
@cards << @card43 = Card.new(:club, '5', 5)
@cards << @card44 = Card.new(:club, '6', 6)
@cards << @card45 = Card.new(:club, '7', 7)
@cards << @card46 = Card.new(:club, '8', 8)
@cards << @card47 = Card.new(:club, '9', 9)
@cards << @card48 = Card.new(:club, '10', 10)
@cards << @card49 = Card.new(:club, 'Jack', 11)
@cards << @card50 = Card.new(:club, 'Queen', 12)
@cards << @card51 = Card.new(:club, 'King', 13)
@cards << @card52 = Card.new(:club, 'Ace', 14)

@cards.shuffle
end

deck1 = Deck.new(card_deck.slice(0..25))
deck2 = Deck.new(card_deck.slice(26..51))

player1 = Player.new("Megan", deck1)
player2 = Player.new("Aurora", deck2)

game = Game.new(player1, player2)



game.start
