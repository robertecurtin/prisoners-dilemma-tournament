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

  it('should process both cooperating', function()
    local turns = 1
    local actual_score = calculate_match_score(
      turns,
      always_cooperate,
      always_cooperate)
    expected = { a = 2, b = 2 }
    assert.are.same(expected, actual_score)
  end)

  it('should process both defecting', function()
    local turns = 1
    local actual_score = calculate_match_score(
      turns,
      always_defect,
      always_defect)
    expected = { a = 1, b = 1 }
    assert.are.same(expected, actual_score)
  end)

  it('should process player A defecting', function()
    local turns = 1
    local actual_score = calculate_match_score(
      turns,
      always_defect,
      always_cooperate)
    expected = { a = 3, b = 0 }
    assert.are.same(expected, actual_score)
  end)

  it('should process player B defecting', function()
    local turns = 1
    local actual_score = calculate_match_score(
      turns,
      always_cooperate,
      always_defect)
    expected = { a = 0, b = 3 }
    assert.are.same(expected, actual_score)
  end)

  it('should process two moves', function()
    local turns = 2
    local actual_score = calculate_match_score(
      turns,
      always_cooperate,
      always_defect)
    expected = { a = 0, b = 6 }
    assert.are.same(expected, actual_score)
  end)

  it('should process two moves with history', function()
    local turns = 2
    local actual_score = calculate_match_score(
      turns,
      tit_for_tat,
      tit_for_tat_initially_defect)
    expected = { a = 3, b = 3 }
    assert.are.same(expected, actual_score)
  end)
end)
