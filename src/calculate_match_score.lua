return function(turns, playerA, playerB)
    local calculate_move_score = require 'calculate_move_score'
    local score = { A = 0, B = 0 }
    local prev_move_a
    local prev_move_b
    for turn = 1,turns do
      local move_a = playerA(prev_move_b)
      local move_b = playerB(prev_move_a)
      move_score = calculate_move_score(move_a, move_b)
      score.A = score.A + move_score.A
      score.B = score.B + move_score.B
      prev_move_a = move_a
      prev_move_b = move_b
    end
    return score
end
