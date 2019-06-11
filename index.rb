require './game'
require './player'
require './question'

Instance = Game.new
until Instance.player1.life == 0 || Instance.player2.life == 0
  Instance.startRound
end
Instance.setLoser