# KingsGame
A turn-based survival game built on the Mojo v3 FPGA

## Kings
A game about reigning over your kingdom as long as possible.
Game mechanics and logic built around an ALU on an FPGA.

## ALU Functions

| ALUFN  | Hexadecimal  | Operation | Description |
|--------|------|-----------|------|
| 000000 | 0x00 | ADD       | Addition |
| 000001 | 0x01 | SUB       | Subtraction |
| 000010 | 0x02 | MUL       | Multiplication |
|        |      |           |      |
| 010110 | 0x16 | XOR       | Exclusive or|
| 010111 | 0x17 | NAND     | Not and|
| 011000 | 0x18 | AND       | And|
| 011010 | 0x1A | A         | Is A|
| 011100 | 0x1C | B        | Is B|
| 011110 | 0x1E | OR        | Or|
|        |      |           |      |
| 100000 | 0x20 | SHL       |Shift left|
| 100001 | 0x21 | SHR       |Shift right|
| 100010 | 0x22 | SLA      |Shift left with sign|
| 100011 | 0x23 | SRA       |Shift right with sign|
|        |      |           |      |
| 100100 | 0x24 | RTL       |Rotate left|
| 100101 | 0x25 | RTR       |Rotate right|
|        |      |           |      |
| 110011 | 0x33 | CMPEQ     |Equals to|
| 110100 | 0x34 | CMPNE    |Not equals to|
| 110101 | 0x35 | CMPLT     |Less than|
| 110111 | 0x37 | CMPLE     |Less than equals to|

## Player-count
One

## Objective
For players to reign over their kingdom as long as possible, without being overthrown or killed. High scores will be generated according to how many rounds the player has lasted.

## Attributes
All attributes range from a scale of 0-10.

## Religion
A measure of the spiritual faith of the player’s population. Consequently, reflects the power of the church.

## Population
A measure of the strength of the population. A consequence of their contentment, hunger and size.

## Military
A measure of the strength of the military. Dependent on their funding, equipment and size.

## Wealth
How rich you (or your royal treasurers) are. ‘Nuff said.

## Instructions
- Players begin the game with a starting attribute level of 4 and have to ensure that these attributes do not drop to 0 or reach 8.
- Every round, players will be prompted with a question requiring them to input a yes or no answer.

- Their answer will positively or negatively affect their four attributes to varying degrees.
- There is no correct answer - nearly all answers are a compromise of some sort.
- Each question answered is considered one successful round.
- Players play until they are killed, or overthrown.
- Players may be saved by bonuses gained at the beginning of the game, outlined below.

## Death
Players will die and lose reign over their kingdom if any of the four attributes drop to 0, or hit the max cap of 10.

For example:
When the Religion attribute has hit max cap:
     The church has grown too powerful, and has decided to overthrow the monarchy.

When the Population attribute has hit 0:
     Your people are dead. You have no kingdom to rule over.

## Bonuses
Along the way, players may be granted bonuses from special instances in-game. These can be gained from answering a question in a specific way, or randomly from a character.
- Food Silo
    - Thanks to your great foresight, the food silo you’ve built helps prevent your people from going hungry
    - Prevents death from Population attribute hitting 0 once
- Insurance Policy
    - Prevents player from getting overthrown due to 0 Wealth once
- Spiritual Healer
    - Restores faith in your population by performing a miracle
    - Prevents player from getting overthrown due to 0 Religion once
- Mercenary Forces
    - Comes to your kingdom’s aid in times of war
    - Prevents player from being killed due to 0 Military once
