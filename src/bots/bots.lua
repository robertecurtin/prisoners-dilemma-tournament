local always_cooperate = require 'bots/always_cooperate'
local always_defect = require 'bots/always_defect'
local tit_for_tat = require 'bots/tit_for_tat'
local mean_tit_for_tat = require 'bots/mean_tit_for_tat'
local pavlov = require 'bots/pavlov'

return {
  { name = 'always_cooperate', action = always_cooperate },
  { name = 'always_defect', action = always_defect },
  { name = 'tit_for_tat', action = tit_for_tat },
  { name = 'mean_tit_for_tat', action = mean_tit_for_tat },
  { name = 'pavlov', action = pavlov }
}
