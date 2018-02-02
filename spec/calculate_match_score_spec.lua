describe('calculate_match_score', function()
  local calculate_match_score = require 'calculate_match_score'

  local always_cooperate = function()
    return 'cooperate'
  end

  local always_defect = function()
    return 'defect'
  end

  local tit_for_tat = function(prev_move)
    return prev_move and prev_move or 'cooperate'
  end

  local tit_for_tat_initially_defect = function(prev_move)
    return prev_move and prev_move or 'defect'
  end

  it('should process initial moves', function()
    local turns = 1
    local actual_score = calculate_match_score(
      turns,
      always_cooperate,
      always_defect)
    expected = { A = 0, B = 3 }
    assert.are.same(expected, actual_score)
  end)

  it('should process two moves', function()
    local turns = 2
    local actual_score = calculate_match_score(
      turns,
      always_cooperate,
      always_defect)
    expected = { A = 0, B = 6 }
    assert.are.same(expected, actual_score)
  end)

  it('should process two moves with history', function()
    local turns = 2
    local actual_score = calculate_match_score(
      turns,
      tit_for_tat,
      tit_for_tat_initially_defect)
    expected = { A = 3, B = 3 }
    assert.are.same(expected, actual_score)
  end)
end)
