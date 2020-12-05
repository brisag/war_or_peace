class Player
  attr_reader :name,
              :deck

  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def if_player_has_lost?
    deck.cards.empty?

  end

end
