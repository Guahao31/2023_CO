# Register Files

RV32I 可以使用的整型寄存器共有32个，本节将实现一个有32个32-bit 寄存器的寄存器组。

## 模块实现

📄 报告中需要给出你写出的完整代码。

在附件`Regs/Regs.v`给出端口的基础上，你需要添加32个固定的地址读口以便Lab4中直接使用，你的端口应类似于：

```verilog
module Regs(
	input clk,
	input rst,
	input [4:0] Rs1_addr, 
	input [4:0] Rs2_addr, 
	input [4:0] Wt_addr, 
	input [31:0]Wt_data, 
	input RegWrite, 
	output [31:0] Rs1_data, 
	output [31:0] Rs2_data,
	output [31:0] Reg00,
	output [31:0] Reg01,
	...,
	output [31:0] Reg31
);
```

## 仿真测试

📄 报告中需要给出testbench代码，测试波形与解释（波形截图需要保证缩放与变量数制合适）。

附件`Regs/Regs_tb.v`给出了基本的测试代码，你需要补充完善测试更多情况。

## 封装IP Core

参考slides p22-27 解决封装过程中`clk, rst`两个信号的问题。
