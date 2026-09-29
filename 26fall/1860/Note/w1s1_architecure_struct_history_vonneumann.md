# Week1 Session1
## Overview
   •  Architecture & Organisation(架构与组织)  
   •  Computer Structure  
   •  History of Computer Hardware  
   •  Von Neumann Architecture（冯诺依曼架构） 
    
## Reading List
[Computer Organisation & Architecture sections 1.1, 1.2 and 1.3 up to Transistors](https://ebookcentral.proquest.com/lib/leeds/reader.action?c=UERG&docID=6824445&ppg=25)    


## 1. Architecture & Organisation(架构与组织)
### 1.1 What is a computer?
    A machine which can:
      • Automatically carry out sequences of arithmetic or logical operations
      • Can be programmed to do so

### 1.2 Architecture(架构:逻辑设计)
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

### 1.3 Organisation（组织：architecture的物理实现)
    • Physical implementation of the architecture
    • Control signals, interfaces between the computer and peripherals（外围设备）, memory technology used
    • How components are built using electronics
    • How components are arranged and connected in a chip or on a circuit board（电路板) 
    • e.g., is there a hardware multiply unit or is it done by repeated addition?(是否有硬件乘法单元，还是通过重复加法完成)

###  1.4 Architecture & Organisation
    • Companies typically design families of computers which share the same basic architecture,
        e.g. Intel x86, ARM64  

    • This gives code compatibility.
        backwards compatibility(代码向后兼容，即为老架构386写的代码，可以在新架构586上运行).
        Organisation differs between different versions.（不同版本架构不同）
        
我的理解   

    • Architecture定义了CPU的蓝图和规范，它定义CPU的指令和运行规范，是CPU的逻辑视图，这个级别对于程序员是可见的。  

    • Organisation是基于Architecture蓝图的具体实现，它实现CPU的物理细节，是CPU的物理视图，这个级别对于程序员是不可见的。  

    • Architecture就像房屋的设计图纸，而Organisation就像根据蓝图搭建的房屋。一份Architecture可以对应不同的Organisation实现。比如ARM CPU Architecture，就被数以百计的芯片公司（华为、中兴、Google)Organisation。
      
###  1.5 扩展阅读
[X86 CPU 架构发展历史](https://blog.csdn.net/Hide_in_Code/article/details/113799454)  


## 2. Computer Structure(计算机结构)
### 2.1 Structure and Function(结构和功能)
|术语|说明|
| --- | --- |
|Structure|This is the way in which components relate to each other.<br>组件相互关联的方式|
|Function|The operation of each individual component as part of the structure.<br>作为Structure一部分的单个组件的操作|


    计算机系统非常复杂，自上而下分析的方法是最清晰、最有效的。我们从计算机的主要组件开始，描述它们的Structure和Function，然后依次进入层次结构的较低层。

### 2.2 Function(Single Processor Computer Level)
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
    
### 2.3 Structure（Single Processor Computer Level）
![](images/w1s1_hierarchical_structure_view.jpg)  

    • A computer is a very complex system which is difficult to describe (e.g. x86 manual ∼ 5000 pages).  

    • This is simplified by considering a hierarchical structure.（分级结构简化了这一点）  

    • At each level, the system consists of a set of components and their interrelationships（相互关系）.  

分级结构我的理解  
Computer Level  （最高层)   

    • IO,Memory,CPU等Component共同组成了Computer的structure
    • CPU的function是运行指令，Memory的function是保持数据

CPU Level      （中间层)  

    • register， ALU，CU等Component共同组成了cpu的structure
    • register的function是存储计算数据，CU的function是控制指令的执行

    
### 2.4 Computer Components
|||
|---|---|
|CPU| •  Controls the operation of the hardware<br>• Interprets and executes instructions from hardware and software|
|Main Memory | Stores data and program instructions|
|Input/Output| •  Hardware that allows machine to interact with users and other devices<br> •  Display, keyboard, printer, network interface card<br>•   Captures input signal as data<br>•  Converts output data to signal hardware understands|
System Bus|  Connects CPU, main memory and I/O|
|Co-processors(协处理器)| Some operations have specialised co-processors(GPU)|
|Control Unit|Controls the operation of the CPU and hence the computer|
|Arithmetic and Logic Unit (ALU)|Performs the computer’s data processing function|
|Registers|Provide storage internal to the CPU|
|CPU Interconnection（内部连接)|Some mechanism that provides for communication among the control unit, ALU, and registers


### 2.5 Multicore 
#### Multicore Structure
![](images/w1s1_hierarchical_processor_view.jpg)
#### Multicore components
Central processing unit (CPU)   

    • Portion of the computer that fetches and executes instructions  
    • Consists of an ALU, a control unit, and registers  
    • Referred to as a processor in a system with a single processing unit  

Core  

    • An individual processing unit on a processor chip
    • May be equivalent in functionality to a CPU on a single-CPU system
    • Specialized processing units are also referred to as cores  

Processor    

    • A physical piece of silicon containing one or more cores
    • Is the computer component that interprets and executes instructions
    • Referred to as a multicore processor if it contains multiple cores
  
![](images/w1s1_mother_board.jpg)
![](images/w1s1_layout.jpg)
![](images/w1s1_amd.jpg)
![](images/w1s1_multicore.jpg)


## 3. History of Computer Hardware 
### 3.1 Development of Computers
1st computing devices   

    • Gears                              (齿轮)
    • Decimal                            (十进制)
    • E.g. Babbage’s Analytical Engine   (Babbage分析引擎)
      
In 1930s/1940s   

    • Gelectrical & electronic switching devices （电气和电子开关设备）
    • Electrical relays                          （电气继电器）
    • Thermionic valve (electronic)               热离子阀（电子）
    
     Why switches?
     • Switches have two states: open and closed
     • Easy to map logical states: true and false
     • Allows for Boolean logic to be performed
     • Binary arithmetic
     • Storage of data in binary form  

|||
| --- | --- |
|Z3|electrical|
|Colossus|Electronic (valves)    电子（阀门）|
|ENIAC|Electronic (valves) 电子（阀门）|  
    
    
Institute for Advanced Studies (IAS) computer   

    • Fundamental design approach was the stored program concept（存储程序的概念)
    • Attributed to the mathematician John von Neumann
    • First publication of the idea was in 1945 for the EDVAC
    • Design began at the Princeton(普林斯顿) Institute for Advanced Studies
    • EDVAC completed in 1952
    • Prototype（原型) of all subsequent general-purpose computers (von Neumann Architecture)
    • Machine instructions stored as data (stored program) in memory or read in from I/O.
    
## 4 Von Neumann Architecture(冯诺依曼架构)
### 4.1 Four linked components
![](images/w1s1_von_4comp.jpg)  

### 4.2 Register
![](images/w1s1_von_reg.jpg)  

### 4.3 Address     
![](images/w1s1_von_adr.jpg)  

### 4.4 Instructions
![](images/w1s1_von_ins.jpg)  

### 4.5 Fetch-Decode-Execute Cycle
![](images/w1s1_von_fetch.jpg)  

### 4.6 Bottleneck(架构瓶颈)   

    • Von Neumann architectures shares memory bus for data and program instructions
    • Single bus limits throughput (data transfer rate) between CPU and memory （单总线限制了CPU和内存之间的吞吐量）
    • CPU must wait for data to be moved to or from memory （CPU必须等待数据移入或移出内存）

### 4.7 Bottleneck Mitigations(架构瓶颈缓解措施)

    • Cache between the CPU and the main memory;
        Stores instructions and data for future operations  

    • Separate caches or separate access paths for data and instructions (the so-called Modified Harvard architecture)        数据和指令的单独缓存或单独访问路径（所谓的改良哈佛架构） 

    • Using branch predictor algorithms and logic   
      (分支预测算法与逻辑)

    • On-chip scratchpad memory(片上暂存存储器) to reduce memory access  

    • Implementing the CPU and the memory as a system on chip
        Reduces latency

### 4.8 Harvard Architecture（哈佛架构)
![](images/w1s1_von_arch.jpg)