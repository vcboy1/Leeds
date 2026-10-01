# Week1 Session1
## Overview
   •  Architecture & Organisation(架构与组织)  
   •  Computer Structure  
   •  History of Computer Hardware  
   •  Instruction Set Architectures
   •  Embedded Systems（嵌入式系统）
   •  Parallelism(并行化)
   •  Hardware & Software
   
 
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
举例

    •  Arm64是Architecture，定义了Arm CPU的指令集和相关控制规范，但并未实现它，只是蓝图。

    •  高通、苹果、华为公司遵照Arm64的架构规范，用不同的方法Organisation（实现了）各自的Arm CPU.  遵循 Arm Architecture规范的硬件产品可以无缝集成。    
      
###  1.5 扩展阅读
[X86 CPU 架构发展历史](https://blog.csdn.net/Hide_in_Code/article/details/113799454)  


## 2. Computer Structure(计算机结构)
### 2.1 Structure and Function(结构和功能)
|术语|说明|
| --- | --- |
|Structure|This is the way in which components relate to each other.<br>组件相互关联的方式|
|Function|The operation of each individual component as part of the structure.<br>作为Structure组成部分的单个独立组件的操作|


    计算机系统非常复杂，自上而下分析的方法是最清晰、最有效的。我们从计算机的主要组件开始，描述它们的Structure和Function，然后依次进入层次结构的较低层。

### 2.2 Function(Computer Level)
  
![](images/w1s1_computer_function.jpg)
 
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
    

### 2.2 Hierarchical Structure（Computer Level）

    • A computer is a very complex system which is difficult to describe (e.g. x86 manual ∼ 5000 pages).  

    • This is simplified by considering a hierarchical structure.（分级结构简化了这一点）  

    • At each level, the system consists of a set of components and their interrelationships（相互关系）.  

### 2.3 Hierarchical Structure （Single processor computer Level）
![](images/w1s1_hierarchical_structure_view.jpg) 



Structure分级视图|组成Structure的Component|Component Function|
| --- | --- | --- |
|computer级|CPU | •  Controls the operation of the hardware<br>• Interprets and executes instructions from hardware and software|
|| I/O|•  Hardware that allows machine to interact with users and other devices<br> •  Display, keyboard, printer, network interface card<br>•   Captures input signal as data<br>•  Converts output data to signal hardware understands|
||System Bus| Connects CPU, main memory and I/O|
||Main memory | Stores data and program instructions|
||Co-processors(协处理器)| Some operations have specialised co-processors(GPU)|
|CPU级|Register|Provide storage internal to the CPU|
||ALU|Performs the computer’s data processing function|
||Internal Bus|Some communication mechanism among the control unit, ALU, and registers|
||Control Unit|Controls the operation of the CPU and hence the computer|
|Control Unit级|Sequencing Logic|
||CU Register adn Decoders|
||Control memory|


### 2.5 Hierarchical Structure （Multicore Level)
![](images/w1s1_hierarchical_processor_view.jpg)
Structure分级视图|组成Structure的Component|Component Function|
| --- | --- | --- |
|Mother Board级|Processor |• A physical piece of silicon(硅) containing one or more cores<br>• Is the computer component that interprets and executes instructions<br> • Referred to as a multicore processor if it contains multiple cores（如果它包含多个内核，则称为多核处理器）|  
|| I/O||
|| System Bus||
|| Main memory||
|Processor级|Core|• An individual processing unit on a processor chip<br>• May be equivalent in functionality to a CPU on a single-CPU system<br>• Specialized processing units are also referred to as cores |
||Register||
||L3 Cache||
|Core级|Load/Store logic|Manages the transfer of data to and from main memory via cache|
||• L1/2 Cache|• level 1 (L1) closest to the core<br>• additional levels (L2, L3, and so on) farther from the core.|
||Instruction logic|fetching and decoding instructions|  
||ALU||  

    单核系统中的CPU ≈ 多核系统中的Core
  
![](images/w1s1_mother_board.jpg)
![](images/w1s1_layout.jpg)
![](images/w1s1_amd.jpg)
![](images/w1s1_multicore.jpg)


## 3. History of Computer Hardware 
|代际|英文|中文|时间|
| --- | --- | --- | --- |
|第一代|	Electronic valves computer|	电子管计算机|	1946–1958|
|第二代|	Transistor computer	|晶体管计算机|	1958–1964|
|第三代|	Integrated circuit computer|	集成电路计算机	|1964–1971|
|第四代|	Microprocessor computer|	大规模/超大规模集成电路计算机	|1971 至今|   


### 3.1 Electronic valves computer(第一代：电子管计算机)
#### 3.1.1  1st computing devices   

    • Gears                              (齿轮)
    • Decimal                            (十进制)
    • E.g. Babbage’s Analytical Engine   (Babbage分析引擎)
      
#### 3.1.2  In 1930s/1940s   

|||
| --- | --- |
|Z3|electrical|
|Colossus|Electronic valves    电子管 |
|ENIAC|electronic valves  电子管 |  

     Why switches?
     • Switches have two states: open and closed
     • Easy to map logical states: true and false
     • Allows for Boolean logic to be performed
     • Binary arithmetic
     • Storage of data in binary form  

    
#### 3.1.3 Institute for Advanced Studies (IAS) computer   
![](images/w1s1_isa_structure.jpg)  

    • Fundamental design approach was the stored program concept（存储程序概念)
    • Attributed to the mathematician John von Neumann(归功于数学家约翰·冯·诺伊曼)
    • First publication of the idea was in 1945 for the EDVAC
    • Design began at the Princeton(普林斯顿) Institute for Advanced Studies
    • EDVAC completed in 1952
    • Prototype（原型) of all subsequent general-purpose computers (von Neumann Architecture)
    • Machine instructions stored as data (stored program) in memory or read in from I/O.
    
## 3.2 Von Neumann Architecture(冯诺依曼架构计算机，依然是第一代计算机)
    stored program concept  

    If the program can exist in memory together with data in some form, the programming process can be simplified. In this way, computers can obtain instructions by reading programs from memory, and by setting a portion of the memory values, programs can be written and modified.  

    如果程序能够以某种形式与数据一同存在于存储器中,编程的过程就可以简化。计算机就可以通过在存储器中读取程序来获取指令,而且通过设置一部分存储器的值就可以编写和修改程序。这个思想被称为“存储程序概念”,这是Von Neumann Architecture的核心思想


### 3.2.1 Four linked components
![](images/w1s1_von_4comp.jpg)  

### 3.2.2 Register
![](images/w1s1_von_reg.jpg)  

### 3.2.3 Address（寻址)     
![](images/w1s1_von_adr.jpg)  

### 3.2.4 Instructions
![](images/w1s1_von_ins.jpg)  

### 3.2.5 Fetch-Decode-Execute Cycle
![](images/w1s1_von_fetch.jpg)  

### 3.2.6 Bottleneck(架构瓶颈)   

    • Von Neumann architectures shares memory bus for data and program instructions
    • Single bus limits throughput (data transfer rate) between CPU and memory （单总线限制了CPU和内存之间的吞吐量）
    • CPU must wait for data to be moved to or from memory （CPU必须等待数据移入或移出内存）

### 3.2.7 Bottleneck Mitigations(架构瓶颈缓解措施)

    • Cache between the CPU and the main memory;
        Stores instructions and data for future operations  

    • Separate caches or separate access paths for data and instructions (the so-called Modified Harvard architecture)        数据和指令的单独缓存或单独访问路径（所谓的改良哈佛架构） 

    • Using branch predictor algorithms and logic   
      (分支预测算法与逻辑)

    • On-chip scratchpad memory(片上暂存存储器) to reduce memory access  

    • Implementing the CPU and the memory as a system on chip
        Reduces latency

### 3.2.8 Harvard Architecture（哈佛架构)
![](images/w1s1_von_arch.jpg)


## 3.3 Transistor computer(晶体管计算机：第二代计算机)
### 3.3.1 Building Blocks(构建模块) of Computers
![](images/w1s2_build_block.jpg)   
|Build Block|Desc|
| --- | --- |
|Gate<br>(门)| • implements a simple Boolean or logical function<br>• Controls data flow<br>• 就是原来学过的与或非门 （And/Or/Not/Xor Gate)|
|Memory Cell<br>(存储单元)| • store one bit of data<br> • can be in one of two stable states at any time(任何时候都处于两种稳定状态之一: 1 or 0)|  

### 3.3.2 Building Blocks & Function

    The basic elements of a digital computer,must perform data storage, movement, processing, and control functions. Only two fundamental types of components are required (Figure 1.8): gates and memory cells.

|Function of computer|Build Block|
| --- | --- |
|Data storage| provided by memory cells|
|Data processing | provided by gates(比如以前学过的，用AND、XOR、Not Gate实现半加器和 全加器)|  
|Data movement |  • memory cell -> memory cell <br>  • memory cell -> gate -> memory cell|
|Control|  • Gate has two data inputs plus a control signal input that activates the gate(一个激活门的控制信号)<br> •  When the control signal is ON, the gate performs its function on the data inputs and produces a data output. <br> • When the control signal is OFF, no output produced<br> • Memory cell stores the bit that is on input lead（存储单元存储输入引线上的位） when the WRITE control signal is ON<br> • Sends bit on output lead（输出引线） that is in the cell READ control signal is ON.|

### 3.3.3 Transistors（晶体管)
![](images/w1s2_trasistors.jpg)  

## 3.4 Integrated circuit computer(集成电路计算机：第三代计算机)
### 3.3.1 Why?
     • Transistors had to be soldered(焊接) to circuit board
        ⬥ Expensive and cumbersome(繁琐) to manufacture  

     • Created problem for computer industry.
        ⬥ Early second-generation computers contained about 10,000 transistors.  

        ⬥ This figure grew to the hundreds of thousands, making the manufacture of newer, more powerful machines increasingly difficult.   

     • Integrated circuits developed to counter this(克服这个问题)
        ⬥ Miniaturisation（小型化）
        ⬥ Lots of transistors（晶体管） and connections between them on a tiny sliver of silicon（硅片)
        ⬥ First IC produced in 1958 by Jack Kilby at Texas Instruments
    
### 3.3.2 relationship among Wafer,Chip,and Gate
![](images/w1s2_wafer.jpg)  
![](images/w1s2_chip_on_mb.jpg)  

### 3.3.3 Moore’s Law(摩尔定律)
    • 1965; Gordon Moore – co-founder(联合创始人) of Intel  

    • Observed number of transistors that could be put on a single chip was doubling every year（单个芯片上的晶体管数量每年翻一番）
        ⬥ The pace slowed to a doubling every 18 months in the 1970’s but has sustained that rate ever since（20世纪70年代，这一速度放缓至每18个月翻一番，但此后一直保持这一速度）   

    • Consequences（后果） of Moore’s law: 
        ⬥ The cost of computer logic and memory circuitry has fallen at a dramatic rate（惊人速度）
        ⬥ The electrical path length is shortened, increasing operating speed
        ⬥ Computer becomes smaller, more convenient to use in a variety of environments（更方便应用于各种环境)
        ⬥ Reduction in power and cooling requirements
        ⬥ Fewer inter-chip connections

![](images/w1s2_moor.jpg)

### 3.3.3 集成电路计算机的发展史
in 1950-1960  
![](images/w1s2_mainframe.jpg)   
in 1960-1970  
![](images/w1s2_mini_computer.jpg)
in 1970-
![](images/w1s2_micro_computer.jpg)


### 3.3.4 Build Block of Modern PC 
![](images/w1s2_sysbus.jpg)
![](images/w1s2_mem_bus.jpg)
![](images/w1s2_micro_processor.jpg)

## 4. Instruction Set Architectures(指令集ISA)
### 4.1 ISA defines
    • supported instructions
    • data types
    • Registers
    • the hardware support for managing main memory
    • the input/output model of implementations of the ISA

### 4.2 classifications（类别)
    CISC – Complex Instruction Set Computer (复杂指令集)
    RISC – Reduced Instruction Set Computer (精简指令集)
            ⬥Small number of basic instructions, e.g. load, add, multiply
            ⬥All features implemented using these basic instructions
        

|ISA|||
| --- | --- | --- |
|CISC|x86|• ISA called x86 after Intel 8086 processor (first in family)<br>• AMD processors compatible(兼容) with x86 instruction set<br>• Number of instructions increased as processors in family added more features<br>• Lots of instruction set extensions to handle special features（Virtualization、Cryptography, etc）.|
||x64|x86的64位版本|
|RISC|RISC V|Open standard|
||ARM|Amber (ARM v2) is open source|
||OpenRISC|Another open standard|
    
## 5. Embedded Systems
### 5.1 Embedded Systems

    •  The use of electronics and software within a product（在产品中使用电子和软件）  

    •  Today many devices that use electric power have an embedded computing system  (calculators, microwave ovens,  washing machines, tv)   
    
    •  Tightly coupled to environment(与环境紧密耦合)    
        ⬥ Real-time constraints(实时约束) such as required speeds of motion, required precision of measurement, and required time durations
    
### 5.2 Embedded Systems: Organisation(组成)
![](images/w1s2_es_differ.jpg)
|Component||
| --- | --- |
|A/D|模拟/数字转换器，Sensor从环境中获取模拟信号，并转换为Processor能处理的数字信号|
|D/A|数字/模拟转换器，Processor用数字信号控制Actuators来影响环境|
|Diagnostic Port|used for diagnosing the system that is being controlled|
|Human interface|flashing light，alert|



### 5.3 Internet of Things（物联网IoT）
    •  IoT:   expanding interconnection(互联) of smart devices, ranging from appliances to tiny sensors（从电器到微型传感器）  
    •  Is primarily driven by embedded devices（主要由嵌入式设备驱动）
![](images/w1s2_IoT.jpg) 
Generations of deployment culminating in the IoT(几代技术的发展最终形成了物联网)
|技术|设备|谁买 |连接方式 |
| --- | --- | --- | --- |
|Information technology (IT)|PCs, servers, routers, firewalls, and so on| enterprise IT people |  wired connectivity|
|Operational technology (OT)| Machines with embedded IT built by non-IT companies, such as medical machinery, process control, and kiosks| enterprise OT people |wired connectivity 
|Personal technology| Smartphones, tablets, and eBook readers | consumers |wireless connectivity|  
|Sensor/actuator technology| Single-purpose devices|consumers, IT, and OT people|wireless connectivity|

### 5.4 Microcontrollers（微控制器，又叫单片机）
![](images/w1s2_mcontroler.jpg)  

    每年有数十亿个Microcontrollers嵌入到从玩具到电器再到汽车的无数产品中。例如，一辆车可以使用70个或更多的Microcontrollers。通常，特别是对于较小、较便宜的微控制器，它们被用作特定任务的专用处理器。例如，微控制器在自动化过程中被大量使用。通过提供对输入的简单反应，他们可以控制机器、打开和关闭风扇、打开和闭合阀门等等。它们是现代工业技术的组成部分，是生产能够处理极其复杂功能的机械的最便宜的方法之一。

    微控制器有各种物理尺寸和处理能力。处理器的范围从4位到32位架构。微控制器往往比微处理器慢得多，通常在MHz范围内运行，而不是微处理器的GHz速度。微控制器的另一个典型特征是它不提供人机交互。微控制器针对特定任务进行编程，嵌入其设备中，并在需要时执行。


### 5.5 Embedded Systems: Concept
|用途|缩写|解释|
| --- | --- | --- |   
|封装方式| Soc（片上系统）|一种集成思想：把 CPU、存储、外设甚至 GPU/DSP 都集成到一颗芯片|
|芯片设计方式|ASIC（专用集成电路）|把设计"烧死"在硅片上,量产时单颗成本极低、性能功耗更好，适合量大，硬件固定不可改，不可编程|
||FPGA（现场可编程门阵列）|出厂是空白逻辑，用户随时改设计 → 灵活，适合原型、小批量,可编程硬件：芯片里是大量逻辑单元，连线由你定义|
|处理器用途|Microcontrollers（微控制器）|一颗芯片 = CPU + 存储 + 外设（定时器、GPIO、ADC…）|
||DSP (数字信号处理器)|专为数字信号处理优化的处理器|

![](images/w1s2_soc.jpg)  

|||
| --- | --- |
|![](images/w1s2_soc2.jpg)  ||
|![](images/w1s2_fpga.jpg)  |![](images/w1s2_asic.jpg)  |
![](images/w1s2_dsp2.jpg)  | |