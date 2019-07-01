require("minitest/autorun")
require("minitest/rg")
require_relative("../sports.rb")

class TestTeam < MiniTest::Test

def test_team_name
  team = Team.new("Team1", [], "Bob")
  assert_equal("Team1", team.name)
end

def test_team_players
  team = Team.new("Team1", [], "Bob")
  assert_equal([], team.players)
end

def test_coach_name
  team = Team.new("Team1", [], "Bob")
  assert_equal("Bob", team.coach)
end

def test_add_player
  team = Team.new("Team1", [], "Bob")
  team.add_player("John")
  assert_equal(["John"], team.players)
end

def test_player_exists__true
  team = Team.new("Team1", ["John"], "Bob")
  assert(team.player_exists?("John"))
end

def test_player_exists__false
  team = Team.new("Team1", ["John"], "Bob")
  refute(team.player_exists?("Sue"))
end


def test_team_points__win
  team = Team.new("Team1", [], "Bob")
  team.play_game(true)
  assert_equal(1, team.points)
end

def test_team_points__lose
  team = Team.new("Team1", [], "Bob")
  team.play_game(false)
  assert_equal(0, team.points)
end


end
