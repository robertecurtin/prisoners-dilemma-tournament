# prisoners-dilemma-tournament
Tournament structure for the iterated prisoners dilemma.

## Rules
Each bot in the tournament plays each bot once (including themselves). The overall score for a bot is the sum of each match.

## Usage
To run the tournament, run [run_tournament.lua](/src/run_tournament.lua).

To add a bot, add it to the /src/bots folder and update [bots.lua](/src/bots/bots.lua).

## Example output
```
always_cooperate v always_cooperate
  always_cooperate scores 14, always_cooperate scores 14

always_cooperate v always_defect
  always_cooperate scores 0, always_defect scores 21

always_cooperate v tit_for_tat
  always_cooperate scores 14, tit_for_tat scores 14

always_defect v always_cooperate
  always_defect scores 21, always_cooperate scores 0

always_defect v always_defect
  always_defect scores 7, always_defect scores 7

always_defect v tit_for_tat
  always_defect scores 9, tit_for_tat scores 6

tit_for_tat v always_cooperate
  tit_for_tat scores 14, always_cooperate scores 14

tit_for_tat v always_defect
  tit_for_tat scores 6, always_defect scores 9

tit_for_tat v tit_for_tat
  tit_for_tat scores 14, tit_for_tat scores 14

-----Results-----
always_cooperate scored 28
always_defect scored 37
tit_for_tat scored 34
```
