# KingsGame
A turn-based survival game built on the Mojo v3 FPGA

##Kings
A game about reigning over your kingdom as long as possible.
Game mechanics and logic built around an ALU on an FPGA.

##ALU Functions

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

##Game Description

##Rules
