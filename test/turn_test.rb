require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'

class TurnTest < Minitest::Test

  def setup
    @card1 = Card.new(:heart, 'Jack', 11)
    @card2 = Card.new(:heart, '10', 10)
    @card3 = Card.new(:heart, '9', 9)
    @card4 = Card.new(:diamond, 'Jack', 11)
    @card5 = Card.new(:heart, '8', 8)
    @card6 = Card.new(:diamond, 'Queen', 12)
    @card7 = Card.new(:heart, '3', 3)
    @card8 = Card.new(:diamond, '2', 2)

    @deck1 = Deck.new([@card1, @card2, @card5, @card8])
    @deck2 = Deck.new([@card3, @card4, @card6, @card7])

    @player1 = Player.new("Megan", @deck1)
    @player2 = Player.new("Aurora", @deck2)

    @turn = Turn.new(@player1, @player2)
  end

  def test_it_exists
    assert_instance_of Turn, @turn
  end

  def test_it_has_spoils
    assert_equal [], @turn.spoils_of_war
  end
end
  def test_basic_turn
     assert_equal :basic, @turn.type
   end

   def test_basic_winner
     winner = @turn.winner
     assert_equal @player1, winner
   end

   def test_basic_spoils_of_war
     @turn.pile_cards
     assert_equal @card1, @turn.spoils_of_war
     assert_equal @card3, @turn.spoils_of_war
end

   def test_add_spoils_to_basic_winner
     winner = @turn.winner
     @turn.pile_cards
     @turn.add_spoils(winner)

     assert_equal @deck1, @turn.player1.deck
     assert_equal @deck2, @turn.player2.deck
   end

#war
    def test_war_turn
     assert_equal :war, turn.type
   end
#
   def test_war_winner
     winner = turn.winner
     assert_equal player2, winner
   end

   def test_add_spoils_to_war_winner
     winner = turn.winner
     turn.pile_cards
     turn.spoils_of_war
     turn.award_spoils(winner)

     assert_equal @deck1, @turn.player1.deck
     assert_equal @deck2, @turn.player2.deck
  end
#
   def test_mutually_assured_destruction_turn
    assert_equal :mutually_assured_destruction, @turn.type
   end
#
   def test_no_winner_for_mutually_assured_destruction
     winner = turn.winner
     assert_equal "No Winner", winner
   end

  def test_one_card_left_after_mutually_assured_destruction
     @turn.pile_cards

     assert_equal @deck1, @player1.deck
     assert_equal @deck2, @player2.deck
     assert_equal 1, @deck1.cards.count
     assert_equal 1, @deck2.cards.count
  end
