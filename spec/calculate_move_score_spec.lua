describe('calculate_move_score', function()
  local calculate_move_score = require 'calculate_move_score'
  it('should process both cooperating', function()
    local expected = { A = 2, B = 2 }
    assert.are.same(expected, calculate_move_score('cooperate', 'cooperate'))
  end)

  it('should process both defecting', function()
    local expected = { A = 1, B = 1 }
    assert.are.same(expected, calculate_move_score('defect', 'defect'))
  end)

  it('should process A defecting', function()
    local expected = { A = 3, B = 0 }
    assert.are.same(expected, calculate_move_score('defect', 'cooperate'))
  end)

  it('should process B defecting', function()
    local expected = { A = 0, B = 3 }
    assert.are.same(expected, calculate_move_score('cooperate', 'defect'))
  end)
end)
