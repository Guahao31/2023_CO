# Lab0: Warmup

本实验由两部分组成：配置实验环境，使用Vivado。

???+ tips "开始之前"
    * 实验工程的路径不应有中文和空格。
    * 默认掌握了Verilog基础并知道如何进行测试。
    * 如果你的数逻一路摸鱼，可以参考：[菜鸟Verilog教程](https://www.runoob.com/w3cnote/verilog-tutorial.html)、[HDLBits](https://hdlbits.01xz.net/wiki/Main_Page)、数逻助教的时候摸出来的[slides](https://github.com/Guahao31/for_Computer_Logic/tree/master/slides)。
    * Slides中所有使用`bd`文件（类似于数逻画的原理图）的部分，都改为使用Verilog完成，避免Vivado的奇怪bug影响你的实验。
    * 可以调整最多线程数，加快综合，具体设置参考这篇[blog](https://blog.csdn.net/yundanfengqing_nuc/article/details/107866015)（之后的文档中，参考博客我会尽量选择墙内可查看的）。
    * 对于Windows系统的同学。工程和IP文件命名尽量简短干练且位于硬盘根目录等浅层目录。否则后续实验会出现路径超出Windows系统支持的最大长度，一旦出现就需要将之前所有的IP一一打开全部重新生成重新归置
    * 将整学期实验的所有IP核组织到统一的浅目录中，后续所有实验的IP Catalog都引用该目录下的IP
    * 在修改某些IP时，采用右键IP，选择`Edit in IP Packager`进入自动生成的子工程中修改，修改完成后`Repackage IP`，然后回到父工程中`Upgrade IP`即可。可以避免自认为IP更新了，实际上工程并没识别到
    * 在进行`Generate Output Product`时，尽量从头到尾均选择`Out of Context`模式。可以便于仿真
    * Slide中存在一定的错误，请认真阅读，结合理论课程知识分析，只要理论课认真学习，完全可以辨识和解决
    * Tools → Setting中可以开启一些设置方便实验
        - Source File → File Saving中可以开启自动保存源文件，减少弹窗询问是否保存
        - Dispaly → Spacing → Density调整为Compact可以在小屏幕上显示更多内容
        - Text Editor中可以调整编辑器为其他第三方编辑器 如VS Code
        - Text Editor → Fonts and Colors可以调整Fonts family和size，原始的太费眼睛了


⬆️**开始实验之前，请认真阅读以上建议**（句末不带句号的是上一届助教 [@NonoHh](https://github.com/NonoHh) 给我们的建议，我搬过来，很有用）

!!! warning "本实验需要提交实验报告（Lab0-3合成一份提交）"

!!! warning "本实验不需要验收"

!!! warning "从本实验开始，每个实验小节（如ALU、Register File、FSM）都可能出现思考题，你需要在报告中给出对思考题的回答，思考题的格式类似于："
    !!! question "思考题"
        这是一个思考题

## 环境配置

本学期实验需要使用git记录实验过程，助教会根据你的git log判断实验完成情况，缺少log或commit行为异常会影响实验成绩。

这部分不用写在实验报告中。

在开始实验之前，你需要在电脑上配置`git, make`。

* [配置git](https://www.windows11.pro/5639.html)，如果你之前从未使用过git，可以查看“其他”中“git入门”一节。
* [配置make](https://tehub.com/a/aCYp1uw0tG)。

配置之后，请新建一个仓库玩耍一下，并建一个“Hello World”工程查看make工具是否能够正常使用。

## 使用Vivado

这一节你将尝试使用Vivado完成小项目，体验Vivado的工作流程。

!!! warning "slides中使用到`bd`文件的地方都替换为Verilog代码。"

!!! note "请阅读slides，完成实验并保留截图证明自己完成了全部的流程，截图需要在实验报告中给出。"



在你过完实验流程之后，请完成思考题：

???+ question "思考题"
    助教在做《计算机体系结构》实验时，在`Message Window`中看到了下列Error：

    > [Drc 23-20] Rule violation (NSTD-1) Unspecified I/O Standard: 41 out of 41 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: BTN_X[4:0], BTN_Y[3], BTN_Y[0], SW[15], SW[14], SW[13], SW[7], SW[6], SW[5], SW[4], SW[3], SW[2], SW[1], SW[0], VGA_B[3:0]... and (the first 15 of 28 listed).

    请你帮助可怜的助教解决这个问题😭，完成实验！

    - 你需要说明：
        * 这个Error是出在哪个阶段（Synthesis/Implementation/Generate Bitstream）？
        * 助教应该怎么做？（请至少给出一种可能的解决方式）
        * 你是通过什么途径了解与解决这个Error的？（简单说明即可，参考内容请给出链接）
    * 你不需要理解与说明：
        * 这个错误到底是什么东西，这个错误是怎么产生的。
    * 你可能通过以下途径完成本题：
        * 认真阅读**报错信息**，说不定解决方案就在Error中了？
        * 使用搜索引擎（最好不要用Baidu），粘贴报错的**头部**，看看能不能借鉴前人的智慧。
        * 善用[官方](https://support.xilinx.com/)。
    
    感谢你帮助助教完成了实验😊！之后的实验中，如果你发现了各种报错（尤其是Critical Warnings/Errors）也可以先尝试通过今天的途径解决。
