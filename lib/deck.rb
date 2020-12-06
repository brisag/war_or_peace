class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    return 0 if @cards[index].nil?
    @cards[index].rank
  end


  def high_ranking_cards
      @high_ranking_cards = @cards.select { |cards| cards.rank >= 11}
  end

  def percent_high_ranking
    (high_ranking_cards.length.to_f / @cards.length * 100).round (2)
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards << card
  end
end
