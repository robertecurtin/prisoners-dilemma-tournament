local calculate_match_score = require 'calculate_match_score'
local always_defect = require 'bots/always_defect'
local always_cooperate = require 'bots/always_cooperate'

local players = {
  { name = 'always_cooperate', action = always_cooperate },
  { name = 'always_defect', action = always_defect }
}

local turns = 7

for _, player_a in ipairs(players) do
  for _, player_b in ipairs(players) do
    local score = calculate_match_score(turns, player_a.action, player_b.action)
    player_a.score = player_a.score and player_a.score + score.a or score.a
    print('\n' .. player_a.name .. ' v ' .. player_b.name)
    print('  ' .. player_a.name .. ' scores ' .. score.a ..
    ', ' .. player_b.name .. ' scores ' .. score.b)
  end
end

print('\n-----Results-----')
for _, player in ipairs(players) do
  print(player.name .. ' scored ' .. player.score)
end
