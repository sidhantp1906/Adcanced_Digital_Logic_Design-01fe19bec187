# Adcanced_Digital_Logic_Design
Lab projects using Verilog HDL in Xilinx ISE
## Table of content
- [Adder Multiplier](###Adder%20Multiplier)
- [Delay Modeling](###Delay%20Modeling)
- [GCD](###Fast%20GCD)
- [Natural Number Sum](###Natural%20Sum)
- [Pipelining](####Pipeling)
- [RTC](###RTC)
- [Sequence Detector](###Sequence%20Detector)
- [Smart Parking](###Smart%20Parking)
- [Memory](###Memory)
- [TicTacToe](###TicTacToe)
- [Vending Machine](###Vending%20Machine)

### Adder Multiplier
Implementation of multiplier using adiition method.

#### Design
In this multiplier is designed using the basic idea of adding and shifting the bits,
let say, we have 1 and 2 to multiply which gives output as 2 now we will look how it 
works in this algorithm                                                                                                                                               
                          01                                                                                                                                           
                        ====                                                                                                                                           
                        * 10                                                                                                                                          
                        ====                                                                                                                                           
                          00                                                                                                                                           
                         01+                                                                                                                                                                                                                                                 
                        ====                                                                                                                                         
                    ans = 10                                                                                                                                           
                        ====  
                        
#### Architecture

#### Waveform

### Delay Modeling
Modeling of delays.

#### Design
This module shows the working of inter and intra delay in a design and how signal behaves with the delays.

#### Architecture

#### Waveform

### Fast GCD
Fast gcd algorithm implementation.

#### Design
This is the implementation of gcd using compare and shift method in which if a > b then a = a - b 
else b = b-a and if a = b then our gcd is b and if not equal then above are executed until we get a = b hence
our gcd comes up in b.

#### Architecture

#### Waveform

### Natural Sum
Sum of N Natural Number.

#### Design
We know to add natural number simply by using loop but in this we are using N(N+1)/2 formula to reduce the use of
adder,multiplier and divider and hence reducing cost and time.

#### Architecture

#### Waveform

### Pipeling
Three Stage arithmetic operation circuit design pipeling.

#### Design
This is design of 3-stage pipelined arithmetic unit which calculated addition substraction and multiplication 
in respective stages,in first stage it calculated x1 = a+b and x2 =  c-d and in second stage it calculates y = x1+x2
and last stage gives output z which is z = yxd.

#### Archictecture

#### Waveform

### RTC
Real Time Clock.

#### Design

#### Archictecture

#### Waveform

### Sequence Detector
FSM Design of Sequence Detector.

#### Design

#### Archictecture

#### Waveform

### Smart Parking
Smart Parking module IP.

#### Design

#### Archictecture

#### Waveform

### Memory
Read/Write Memory design.

#### Design

#### Archictecture

#### Waveform

### TicTacToe
TicTacToe game implementation.

#### Design

#### Archictecture

#### Waveform

### Vending Machine
Vending Machine design.

#### Design

#### Archictecture

#### Waveform

