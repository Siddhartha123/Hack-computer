# Hack-computer

This repository contains Verilog implementation of the Hack computer (as per the specifications from the course [Nand2Tetris](http://nand2tetris.org)).

The codes are organized according to the week wise tasks of the course.

## Week 1 
The following gates and logic blocks are designed using nand gates only:
1. Not
2. And
3. Or
4. Xor
5. Multiplexor
6. Demultiplexor
7. Multi-bit Not
8. Multi-bit And
9. Multi-bit Or
10. Multi-bit Multiplexor
11. 4-way Multiplexor
12. 8-way Multiplexor
13. 4-way Demultiplexor
14. 8-way Demultiplexor
15. 8-input Or

## Week 2
The following logic blocks are designed using the blocks designed in previous week:
1. Half-adder
2. Full-adder
3. 16-bit adder
4. Incrementer
5. ALU

## Week 3
The following sequential logic blocks are designed using the blocks designed in previous week:
1. D Flip-flop
2. Single bit Register
3. 16-bit Register
4. N-register memory (N is 8,64,512,4K,16K)
5. Program Counter 

## Week 5
In this week the actual CPU takes shape. I went for a separate controller and datapath approach. Here are the components
1. CPU_Datapath
2. CPU_FSM
3. CPU 

Apart from the above modules, I implemented a ROM (as instruction memory) and RAM (as data memory) all of which are instantiated inside the top level entity called `hack_computer`

## Testing
All the associated test modules are inside the folder ```testbenches```

NOTE: As the memory modules are large, I am unable to synthesize them on the development platform that I am using. Hence I made another testbench (```testbenches/CPU_test.v```) that implements a smaller memory enough to run small programs.