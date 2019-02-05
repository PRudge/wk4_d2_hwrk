
class Game
  def self.who_won(hand1, hand2)
		hand1 = hand1.downcase
		hand2 = hand2.downcase

		rules = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }

		if hand1 == hand2
			return "It's a Draw!"
		elsif rules[hand1] == hand2
			return "Player 1 wins with #{hand1}!"
		elsif rules[hand2] == hand1
			return "Player 2 wins with #{hand2}!"
		else
			return "Please choose from rock, paper or scissors!"
		end
	end
end
