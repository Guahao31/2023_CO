# Lab4-3

!!! danger "本实验并未 release，内容随时都会变化。个人水平有限，如您发现文档中的疏漏欢迎 Issue！"

!!! warning "在开始本实验之前，请备份Lab4-1与Lab4-2的所有工程，包括你使用的 IP Core。"
    你可以使用 git 保存之前的所有进度，并开新的分支来完成 Lab4-3。

在之前的实验中，我们完成了基本的指令，本节实验要在 Lab4-1 & Lab4-2 的基础之上拓展指令。

!!! tip "在本节实验中，你需要实现以下指令："

    * R-Type: add, sub, and, or, xor, slt, srl, **sll**, **sra**, **sltu**
    * I-Type: addi, andi, ori, xori, slti, srli, **slli**, **srai**, **slti**, **sltiu**, **lb**, **lh**, lw, **lbu**, **lhu**, **jalr**
    * S-Type: **sb**, **sh**, sw
    * B-Type: beq, **bne**, **blt**, **bge**, **bltu**, **bgeu**
    * J-Type: jal
    * **U-Type**: **lui**, **auipc**

    即 [RISC-V 32I](../Other/RISC_V.md) 中除了 `ecall, ebreak` 外的所有指令，黑体标出的指令为新添加的指令。在开始实验之前，请保证你理解了所有的指令含义与类型。

你可以在 [venus](http://venus.cs61c.org/) 上使用以下代码来理解 `sb, sh` 的含义：

=== "sh"

    ```
    addi x11, x0, 0x421
    lui x10, 0x33333
    addi x10, x10, 0x333
    sw x10, 48(zero)
    sh x11, 49(zero)
    add zero, zero, zero
    ```
=== "sb"

    ```
    addi x11, x0, 0x22
    addi x10, x0, 0x20
    lui x9, 0x33333
    addi x9, x9, 0x333
    sw x9,48(zero)
    sb x11, 49(zero)
    sb x10, 50(zero)
    add zero, zero, zero
    ```