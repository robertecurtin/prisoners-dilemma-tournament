return function(turns, player_a, player_b)
  local function calculate_move_score(move_a, move_b)
    local results = {
      cooperate_cooperate = { a = 2, b = 2 },
      defect_defect =       { a = 1, b = 1 },
      cooperate_defect =    { a = 0, b = 3 },
      defect_cooperate =    { a = 3, b = 0 }
    }
    return results[move_a .. '_' .. move_b]
  end

  local score = { a = 0, b = 0 }
  local prev_move_a
  local prev_move_b

  for turn = 1,turns do
    local move_a = player_a(prev_move_b)
    local move_b = player_b(prev_move_a)
    move_score = calculate_move_score(move_a, move_b)
    score.a = score.a + move_score.a
    score.b = score.b + move_score.b
    prev_move_a = move_a
    prev_move_b = move_b
  end

  return score
end
