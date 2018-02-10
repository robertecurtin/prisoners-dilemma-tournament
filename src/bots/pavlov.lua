local my_move
local switch_moves = {
  cooperate = 'defect',
  defect = 'cooperate'
}

return function(opp_prev_move)
  if not opp_prev_move then
    my_move = 'cooperate'
    return my_move
  end

  if opp_prev_move == 'defect' then
    my_move = switch_moves[my_move]
  end

  return my_move
end
