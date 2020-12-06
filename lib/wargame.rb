class Game
  attr_reader :player1,
              :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start
    p  "Welcome to War! (or Peace) This game will be played with 52 cards."
    p  "The players today are Megan and Aurora."
    p  "Type 'GO' to start the game!"
    p  "------------------------------------------------------------------"


    input = gets.chomp

        if input == 'GO' or 'go' or 'Go'
          p "starting game"
          start_game
        end
  end

  def start_game
    current_turn = 0
    turn = Turn.new(player1, player2)
    until player1.if_player_has_lost? || player2.if_player_has_lost?

      if turn.type == :basic
        winner = turn.winner
        turn.pile_cards
        turn.add_spoils(winner)
        current_turn += 1
        p "Turn #{current_turn}: #{winner.name} won 2 cards"

      elsif turn.type == :war
        winner = turn.winner
        turn.pile_cards
        turn.add_spoils(winner)
        current_turn += 1
        p "Turn #{current_turn}: WAR - #{winner.name} won 6 cards"

      elsif turn.type == :mutually_assured_destruction
        turn.pile_cards
        current_turn += 1
        p "Turn #{current_turn}: *mutually assured destruction* 6 cards removed from play."
      end



      if current_turn == 1000000
        p "---- DRAW ----"
        break
      elsif player1.if_player_has_lost?
        p "*~*~*~* #{player2.name} has won the game! *~*~*~*"
      elsif player2.if_player_has_lost?
        p "*~*~*~* #{player1.name} has won the game! *~*~*~*"
      end
    end
  end
end
