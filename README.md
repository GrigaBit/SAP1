# SAP1

The SAP-1 architecture was proposed by Albert Paul Malvino with the intention of simplifying the structure of a fully functional computing system as much as possible. The SAP-1 architecture was published in the book Digital Computer Electronics.

~BUS

The 8-bit wide BUS is theoretically just 8 wires used to transfer data from one module to another.

For the system to function properly, a few simple rules must be followed:

Only one module can send data at a time to another module.

To prevent errors during data transmission, the outputs are disconnected using a tristate buffer.

~Program Counter (PC)

The Program Counter is a 4-bit address counter used to send the address of the next instruction.

It increments its value with each completed cycle (some instructions take multiple machine cycles).

CE (Counter Enable): Increments the PC in the next cycle.

CO (Counter Out): Places the value from the PC onto the BUS.

Reset: Resets the counter.

~Memory Address Register (MAR)

The MAR is a 4-bit register.

It stores the address in RAM from where the next instruction will be fetched.

MI (Memory Address In): Stores the value from the BUS into the MAR.

~Input Unit

Controls access to the RAM when the computer needs to be programmed by writing data into the RAM.

~Run/Prog Selector Switch

The computer has two operating states:

Programming State: The RAM is being programmed.

Run State: The program is being executed.

~RAM

The RAM has a size of 16x8 (16 addresses, each 1 byte).

When the computer is running, it receives addresses from the MAR.

~Register A and B

Both registers are 8 bits wide.

Register A: Can send data onto the BUS.

Register B: Used only as a secondary data source for the ALU.

~ALU (Arithmetic Logic Unit)

The ALU is capable of performing 4 operations: ADD, SUB, OR, and AND.

It can also send data onto the BUS.

~Output Unit

This register communicates with the user through a display.

~Instruction Register (IR)

An 8-bit register that stores instructions and sends them to the control unit for decoding.

An instruction is divided into two parts:

The upper 4 bits go to the controller.

The lower 4 bits go onto the BUS.

~Controller/Sequencer

The "brain" of the computer.

It handles instruction processing, sends control signals, and resets the system if necessary.

!!Project is still in progress!!
