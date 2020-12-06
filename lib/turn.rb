class Turn
  attr_reader :player1,
              :player2,
              :spoils_of_war

  def initialize(player1, player2)
    @player1 = player1
    @player2  = player2
    @spoils_of_war = []
  end

  def type
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
    return :basic
  elsif @player1.deck.rank_of_card_at(2) != @player2.deck.rank_of_card_at(2)
    return :war
  else
    return :mutually_assured_destruction
    end
  end


  def winner
    if type == :basic
      if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
        return @player1
      else @player2.deck.rank_of_card_at(0) > @player1.deck.rank_of_card_at(0)
        return @player2
      end
    elsif type == :war
      if @player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2)
        return player1
      else @player2.deck.rank_of_card_at(2) > @player1.deck.rank_of_card_at(2)
        return @player2
      end
    elsif type == :mutually_assured_destruction
        return "No Winner"
      end
    end

  def pile_cards

    if type == :basic
      @spoils_of_war << @player1.deck.remove_card
      @spoils_of_war << @player2.deck.remove_card

    elsif type == :war
      3.times do
        @spoils_of_war << @player1.deck.remove_card
        @spoils_of_war << @player2.deck.remove_card
      end

    else type == :mutually_assured_destruction
      3.times do
        @player1.deck.remove_card
        @player2.deck.remove_card
      end
    end
  end


  def add_spoils(winner)
    @spoils_of_war.each do |spoil_card|
      winner.deck.add_card(spoil_card)
    end
    @spoils_of_war.clear
  end
end
