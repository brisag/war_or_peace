require './lib/card'

class Deck
  attr_reader :cards

#this method will take one argument - an array of cards.
  def initialize(cards)
    @cards = cards
  end

  # this method will take one argument that represents the index location of a card to be used
  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
#I know single line syntax isnt favroable, but I cant get my code to work!
#@cards.select do |cards|
#   card.rank >=11
      @high_ranking_cards = @cards.select { |cards| cards.rank >= 11}
end

#this method will return the percentage of cards that are high ranking
  def percent_high_ranking
  def percent_high_ranking
    (high_ranking_cards.length.to_f / @cards.length * 100).round(2)
  end

  #this method will remove the top card from the deck
  #to remove first element of array you use.shift.  to remove last element you use.pop
  #to remove array at given index you can use slice or delete_at()
  def remove_card
    @cards.shift
  end

  #this method will add one card to the bottom (end) of the deck
  #<< means add to the end of this array
    def add_card(card)
        @cards << card
  end
end
