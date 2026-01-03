// push constant 3030
@3030
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0 (將 3030 存入 THIS 指標)
@SP
AM=M-1
D=M
@3      // THIS 指標位於 RAM[3]
M=D

// push constant 3040
@3040
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1 (將 3040 存入 THAT 指標)
@SP
AM=M-1
D=M
@4      // THAT 指標位於 RAM[4]
M=D

// push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop this 2 (存入 THIS[2], 即 RAM[3030+2])
@2
D=A
@3
D=D+M   // D = 3030 + 2
@R13
M=D     // 使用 R13 暫存目標位址
@SP
AM=M-1
D=M     // D = 32
@R13
A=M
M=D

// push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop that 6 (存入 THAT[6], 即 RAM[3040+6])
@6
D=A
@4
D=D+M   // D = 3040 + 6
@R13
M=D
@SP
AM=M-1
D=M     // D = 46
@R13
A=M
M=D

// push pointer 0
@3
D=M
@SP
A=M
M=D
@SP
M=M+1

// push pointer 1
@4
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D

// push this 2
@2
D=A
@3
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

// push that 6
@6
D=A
@4
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
AM=M-1
D=M
A=A-1
M=M+D