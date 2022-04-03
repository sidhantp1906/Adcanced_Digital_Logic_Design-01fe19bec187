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
- [4-Stage-Pipeline](###4Stage%20Pipeline)

### Adder Multiplier
Implementation of multiplier using adiition method.

#### Design
In this multiplier is designed using the basic idea of adding and shifting the bits,
let say, we have 1 and 2 to multiply which gives output as 2 now we will look how it 
works in this algorithm  
1 x 2 = 1 + 1 = 2.
                        
#### Architecture
![Screenshot (123)](https://user-images.githubusercontent.com/60102705/161208698-7aa1f9dd-5739-40b9-97aa-cef35cfa05ed.png)
![Screenshot (124)](https://user-images.githubusercontent.com/60102705/161208692-e42c542e-ab72-4bf6-8907-933369f2b7e5.png)

#### Waveform

### Delay Modeling
Modeling of delays.

#### Design
This module shows the working of inter and intra delay in a design and how signal behaves with the delays.

#### Architecture
![Screenshot (125)](https://user-images.githubusercontent.com/60102705/161209150-2002247a-ea96-465a-8905-4c4591a11e9f.png)

#### Waveform
![Screenshot (116)](https://user-images.githubusercontent.com/60102705/160144714-2b493a1a-0547-4420-881f-bd556d40eedf.png)


### Fast GCD
Fast gcd algorithm implementation.

#### Design
This is the implementation of gcd using compare and shift method in which if a > b then a = a - b 
else b = b-a and if a = b then our gcd is b and if not equal then above are executed until we get a = b hence
our gcd comes up in b.

#### Architecture
![Screenshot (126)](https://user-images.githubusercontent.com/60102705/161209756-0e2be0f8-7d5f-4db1-8a9a-fbf82bde14d0.png)

#### Waveform

### Natural Sum
Sum of N Natural Number.

#### Design
We know to add natural number simply by using loop but in this we are using N(N+1)/2 formula to reduce the use of
adder,multiplier and divider and hence reducing cost and time.It is also two stage pipelined in which first stage is fetch which reads data from 1 to 512 from memory and then second stage is execute which makes the sum function.

#### Architecture
![Screenshot (122)](https://user-images.githubusercontent.com/60102705/161207341-d16df14a-a769-4b44-a2d8-a0e3aec36928.png)

#### Waveform
![Screenshot (121)](https://user-images.githubusercontent.com/60102705/161206744-3c31a1a3-c3b3-41d7-900d-e5425efd4259.png)

### Pipeling
Three Stage arithmetic operation circuit design pipeling.

#### Design
This is design of 3-stage pipelined arithmetic unit which calculated addition substraction and multiplication 
in respective stages,in first stage it calculated x1 = a+b and x2 =  c-d and in second stage it calculates y = x1+x2
and last stage gives output z which is z = yxd.

#### Archictecture
![Screenshot (127)](https://user-images.githubusercontent.com/60102705/161210122-3c66d2e3-266b-4cdb-9f15-1a3a702ffed7.png)

#### Waveform
![Screenshot (117)](https://user-images.githubusercontent.com/60102705/160145405-319cd6a2-31ba-41ca-a626-e6d40a8c41c4.png)

### RTC
Real Time Clock.

#### Design
Design of real time clock module which gives outputs in hours:minutes:seconds.

#### Archictecture

#### Waveform
![Screenshot (84)](https://user-images.githubusercontent.com/60102705/160143177-d563c8f3-890b-4afd-ae06-5a06b21561fc.png)

### Sequence Detector
FSM Design of Sequence Detector.

#### Design
This design detects the sequence 1011 consists of 5 states,first state is idle which when detects 1 then goes to state2 else remains in state1
,state2 goes to state3 when detects 0 else remains in itself ,state3 goes to state4 when detetcs 1 else goes to state1 and state4 goes to state5 
when detetcs 1 else goes to state3 and state5 goes to state1 when input is 1 else in state3.

#### Archictecture
![Screenshot (128)](https://user-images.githubusercontent.com/60102705/161210901-dd3e58a5-c695-4e06-b895-dac41a9c5de1.png)

#### Waveform
![Screenshot (120)](https://user-images.githubusercontent.com/60102705/161205820-b2df62dc-fbe1-4edc-ab61-459b322a28ae.png)

### Smart Parking
Smart Parking module IP.

#### Design
This takes exit and entry sensor data as input when entry sensor detetcs car at door then it asks for password when matches then
it opens the door else it asks for password and fills the space when exit sensor detects car then it opens the door and vacant one
pace from memory for other cars to fill if required.

#### Archictecture

#### Waveform
![Screenshot (118)](https://user-images.githubusercontent.com/60102705/160146085-c7d5b8d3-e9da-4e11-adf0-14261c8a8096.png)

### Memory
Read/Write Memory design.

#### Design
Simple Read/Wrte(SRAM) memory architecture which gives output data when read signal is high ,when write signal is high it 
allows user to write data at desired location in memory

#### Archictecture
![Screenshot (129)](https://user-images.githubusercontent.com/60102705/161211838-a061f5bc-81fc-4414-bb31-632de9b9bf78.png)

#### Waveform
![Screenshot (119)](https://user-images.githubusercontent.com/60102705/160146682-860eaee0-49bf-45b1-91fb-8b8a82d9d7dc.png)

### TicTacToe
TicTacToe game implementation.

#### Design
This is the design of tictactoe game which allows two players to fit their values into game block(memory)
which are x represented by 10 and o represented by 01 and it also gives illegal move signal when player tries to enter 
their values in place where it is already filled. Winner is decided when someone fills any 3 consecutive blocks first and game gets over
when all spaces are filled but no one completes it.

#### Archictecture
![Screenshot (131)](https://user-images.githubusercontent.com/60102705/161214106-09728174-3e49-4715-a968-13e0d0f7d75d.png)
![Screenshot (130)](https://user-images.githubusercontent.com/60102705/161214113-8a342554-ac9e-4914-8243-abddf2700989.png)

#### Waveform
![winner](https://user-images.githubusercontent.com/60102705/160142168-82a58832-49bf-48ff-aed8-5653f4984910.png)

### Vending Machine
Vending Machine design.

#### Design
Design of vending machine which has only access to Rs.5,10 and 20 and keeps a count of current total money ,other inputs are refund and return
refund of money will be granted when user asks for refund and return allows user to get back their change money.
To get soda Rs.55 has to be completed Rs.70 for water ,beep signal is generated when someone tries to get soda/water before completing 
desired amount.

#### Archictecture
![Screenshot (132)](https://user-images.githubusercontent.com/60102705/161214262-9649329d-6cc1-43d9-8884-78cef2a853fa.png)
![Screenshot (133)](https://user-images.githubusercontent.com/60102705/161214266-d9f5bc99-995f-478c-a976-dedc3e27016f.png)

#### Waveform
![Screenshot (101)](https://user-images.githubusercontent.com/60102705/160142006-a67d6dc6-9bfc-4d53-93ea-905d81106298.png)

### 4Stage Pipeline

#### Design

#### Architecture
![Screenshot (136)](https://user-images.githubusercontent.com/60102705/161427183-5ec19931-92c6-4f14-b721-49585875fbc8.png)
![Screenshot (135)](https://user-images.githubusercontent.com/60102705/161427185-a36c250b-5d6c-4a12-8711-e94568e63249.png)

#### Waveform
