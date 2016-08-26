Feature: example01
Scenario: one
Given a borad like this:
| |1|2|3|
|1| | | |
|2|	| |	|
|3| | | |

When player s plays in row 2, column 1
Then the board should look like this:
| |1|2|3|
|1| | | |
|2|x| | |
|3| | | |