return function(player_A_move, player_B_move)
  local results = {
    cooperate_cooperate = { A = 2, B = 2 },
    defect_defect =       { A = 1, B = 1 },
    cooperate_defect =    { A = 0, B = 3 },
    defect_cooperate =    { A = 3, B = 0 }
  }
  return results[player_A_move .. '_' .. player_B_move]
end
