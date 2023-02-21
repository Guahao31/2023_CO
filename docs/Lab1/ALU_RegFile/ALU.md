# ALU

ALU (Arithmetic Logic Unit) 是负责对二进制整数进行算术运算和位运算的组合电路部件，本实验要求你设计一个32位的能够对两个输入进行：按位与/或/异或、无符号数加法/减法/溢出、逻辑右移。

## 模块实现

!!! note "报告中需要给出你写出的完整代码。"

你可以在两种实现方式中选择：

* 仿照 slides p12，使用提供的 IP core 完成（你需要使用 Verilog 而非原理图实现）；或
* （更推荐）参考[标准](https://ieeexplore.ieee.org/document/1620780)第5.1节 *Operators*，使用运算符完成。
    * 你可能需要参考标准第5.5节 *Signed expressions*，使用 `$signed(), $unsigned()` 完成实验。

不论你采用何种方式，你的模块名与端口名应为：

```verilog linenums="1" title="ALU.v"
module ALU (
  input [31:0]  A,
  input [31:0]  B,
  input [2:0]   ALU_operation,
  output[31:0]  res,
  output        zero
);
// Your code

endmodule
```

## 仿真测试

!!! note "报告中需要给出 testbench 代码，测试波形与解释（波形截图需要保证缩放与变量数制合适）。"

基础的仿真波形已经在附件 `ALU/ALU_tb.v`，但它过于简单，你需要添加若干边界测试以完善。


!!! question "思考题"
    现在对 ALU 进行拓展，要求修改 ALU 以**支持两个有符号数的大小比较**，你需要添加哪些端口以支持？（Hint：目前的ALU将两个输入都视作无符号数； `zero` 信号仅能用来判断是否相等）

## 封装IP Core

将你实现的 ALU 封装为 IP core 以便之后调用。
