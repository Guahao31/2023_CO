# Lab0: Warmup

> 💡开始之前：
>
> * 实验工程的路径不应有中文和空格。
> * 默认掌握了Verilog基础并知道如何进行测试。
>   * 如果你的数逻一路摸鱼，可以参考：[菜鸟Verilog教程](https://www.runoob.com/w3cnote/verilog-tutorial.html)、[HDLBits](https://hdlbits.01xz.net/wiki/Main_Page)、数逻助教的时候摸出来的[slides](https://github.com/Guahao31/for_Computer_Logic/tree/master/slides)。
> * Slides中所有使用`bd`文件（类似于数逻画的原理图）的部分，都改为使用Verilog完成，避免Vivado的奇怪bug影响你的实验。
> * 对于Windows系统的同学。工程和IP文件命名尽量简短干练且位于硬盘根目录等浅层目录。否则后续实验会出现路径超出Windows系统支持的最大长度，一旦出现就需要将之前所有的IP一一打开全部重新生成重新归置
> * 将整学期实验的所有IP核组织到统一的浅目录中，后续所有实验的IP Catalog都引用该目录下的IP
> * 在修改某些IP时，采用右键IP，选择`Edit in IP Packager`进入自动生成的子工程中修改，修改完成后`Repackage IP`，然后回到父工程中`Upgrade IP`即可。可以避免自认为IP更新了，实际上工程并没识别到
> * 在进行`Generate Output Product`时，尽量从头到尾均选择`Out of Context`模式。可以便于仿真
> * Slide中存在一定的错误，请认真阅读，结合理论课程知识分析，只要理论课认真学习，完全可以辨识和解决
> * Tools → Setting中可以开启一些设置方便实验
>
>   - Source File → File Saving中可以开启自动保存源文件，减少弹窗询问是否保存
>   - Dispaly → Spacing → Density调整为Compact可以在小屏幕上显示更多内容
>   - Text Editor中可以调整编辑器为其他第三方编辑器 如VS Code
>   - Text Editor → Fonts and Colors可以调整Fonts family和size，原始的太费眼睛了

⬆️**开始实验之前，请认真阅读以上建议**（句末不带句号的是上一届助教给我们的建议，我搬过来，很有用）

