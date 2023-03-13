# Lab4

!!! danger "本实验并未 release，内容随时都会变化。个人水平有限，如您发现文档中的疏漏欢迎 Issue！"

本次实验需要完成单周期 CPU，实现 RISC-V 32I 指令集的所有指令，如果你对指令不熟悉，可以查看 RISC-V 手册或[速查表](../Other/RISC_V.md)。

实验分为四个小实验，4-0 使用提供的 DataPath 和 CtrlUnit 的 IP 核组成 SCPU，4-1 与 4-2 分别自行实现 CtrlUnit 与 DataPath 并组成 SCPU，4-3 在之前实验的基础上拓展以实现 RISC-V 32I 中的所有指令（除 `ecall, ebreak`），4-4 在 4-3 的基础上实现简单的中断处理。

!!! warning "本实验需要提交实验报告（Lab4 的四个小实验合成一份提交）"

提交实验报告时，你需要附上源代码。