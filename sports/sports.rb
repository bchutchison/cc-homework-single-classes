class Team

attr_reader :name, :players, :points
attr_accessor :coach


def initialize(name, players, coach)
  @name = name
  @players = players
  @coach = coach
  @points = 0
end

def add_player(player_name)
  @players.push(player_name)
end


def player_exists?(player)
  return @players.include?(player)
end


def play_game(won)
  @points += 1 if won

end

end
