# Week1 Session1
## Overview
   •  Architecture & Organisation(架构与组织)  
   •  Computer Structure  
   •  History of Computer Hardware  
   •  Von Neumann Architecture（冯诺依曼架构） 
    
## Reading List
[Computer Organisation & Architecture sections 1.1, 1.2 and 1.3 up to Transistors](https://ebookcentral.proquest.com/lib/leeds/reader.action?c=UERG&docID=6824445&ppg=25)    


## Architecture & Organisation(架构与组织)
### 1. What is a computer?
    A machine which can:
      • Automatically carry out sequences of arithmetic or logical operations
      • Can be programmed to do so

### 2. Architecture(架构:逻辑设计)
    • Logical design of the computer （计算机的逻辑设计） 
    • Defines the attributes of a system visible to the programmer（定义程序员可见的系统属性）  
        Instruction set
        number of bits used to represent various data types
        I/O mechanisms（IO机制)
        techniques for addressing memory(内存寻址)
    • Have a direct impact on the logical execution of a program （对程序的逻辑执行有直接影响）
    • e.g., is there a multiply instruction?（例如，是否有乘法指令？）
    
#### instruction set architecture (指令集架构ISA)
    The ISA defines instruction formats, instruction opcodes, registers, instruction and data memory; the effect of executed instructions on the registers and memory; and an algorithm for controlling instruction execution

### 3. Organisation（组织：architecture的物理实现)
    • Physical implementation of the architecture
    • Control signals, interfaces between the computer and peripherals（外围设备）, memory technology used
    • How components are built using electronics
    • How components are arranged and connected in a chip or on a circuit board（电路板) 
    • e.g., is there a hardware multiply unit or is it done by repeated addition?(是否有硬件乘法单元，还是通过重复加法完成)

###  4. Architecture & Organisation
    • Companies typically design families of computers which share the same basic architecture,
        e.g. Intel x86, ARM64  

    • This gives code compatibility.
        backwards compatibility(代码向后兼容，即为老架构386写的代码，可以在新架构586上运行).
        Organisation differs between different versions.（不同版本架构不同）
        
我的理解   

    • Architecture定义了CPU的蓝图和规范，它定义CPU的指令和运行规范，是CPU的逻辑视图，这个级别对于程序员是可见的。  

    • Organisation是基于Architecture蓝图的具体实现，它实现CPU的物理细节，是CPU的物理视图，这个级别对于程序员是不可见的。  

    • Architecture就像房屋的设计图纸，而Organisation就像根据蓝图搭建的房屋。一份Architecture可以对应不同的Organisation实现。比如ARM CPU Architecture，就被数以百计的芯片公司（华为、中兴、Google)Organisation。
      
###  5. 扩展阅读
[X86 CPU 架构发展历史](https://blog.csdn.net/Hide_in_Code/article/details/113799454)  


## Computer Structure(计算机结构)
### Structure and Function(结构和功能)
|术语|说明|
| --- | --- |
|Structure|This is the way in which components relate to each other.<br>组件相互关联的方式|
|Function|The operation of each individual component as part of the structure.<br>作为Structure一部分的单个组件的操作|

    计算机系统非常复杂，自上而下分析的方法是最清晰、最有效的。我们从计算机的主要组件开始，描述它们的Structure和Function，然后依次进入层次结构的较低层。

### Function
There are four basic functions that a computer can perform:  

    • Data processing
        Data may take a wide variety of forms, and the range of processing requirements is broad 

    • Data storage
        Short-term
        Long-term   

    • Data movement
        Input-output (I/O) - when data are received from or delivered to a device (peripheral) that is directly connected to the computer  

        Data communications – when data are moved over longer distances, to or from a remote device  

    • Control
        A control unit manages the computer’s resources and orchestrates the performance of its functional parts in response to instructions
    
### Hierarchical Structure（分级结构）
    • A computer is a very complex system which is difficult to describe (e.g. x86 manual ∼ 5000 pages).  

    • This is simplified by considering a hierarchical structure.（通过考虑分解结构简化了这一点）  

    • At each level, the system consists of a set of components and their interrelationships（相互关系）.  

    • The behaviour at each level depends on a simplified, abstracted characterisation of the system at the next level down.（每一级的行为取决于下一级系统的简化、抽象特征。）  
    
