# 除法器

你可以从理论课学到的几个版本中任选一个算法完成实验，基本的要求是**无符号、无溢出判断、有除零异常判断**，如果你不实现除零异常判断将无法获得全部的实验分数。

## 模块实现

你的模块与端口名应该与下列相同：

```verilog title="divider.v"
module div32(
    input   clk,
    input   rst,
    input   start,          // 开始运算
    input[31:0] dividend,   // 被除数
    input[31:0] divisor,    // 除数
    output divide_zero,     // 除零异常
    output  finish,         // 运算结束信号
    output[31:0] res,       // 商
    output[31:0] rem        // 余数
);
```

如果除数是零，则直接将 `finish` 与 `divide_zero` 升至高位即可，此时 `res` 与 `rem` 可以是任意值。