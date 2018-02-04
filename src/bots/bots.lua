local always_cooperate = require 'bots/always_cooperate'
local always_defect = require 'bots/always_defect'
local tit_for_tat = require 'bots/tit_for_tat'

return {
  { name = 'always_cooperate', action = always_cooperate },
  { name = 'always_defect', action = always_defect },
  { name = 'tit_for_tat', action = tit_for_tat }
}
