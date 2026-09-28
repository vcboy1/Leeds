# Week1 Session2
## 1. Python
### 1.1 简介
    • A high-level programming language
       o  meaning more like natural (spoken) language than machine code  

    • Considered to be easy to work with
        o less verbose (ie. less code) than other common languages
        o easy-to-read error messages  

    • a common tool in many areas
        o data science
        o natural language processing
        o AI

### 1.2 History
    • Over 30 years old    

    • Current version Python 3 about 15 years old    

    • The move from Python 2 to Python 3 was controversial  
        • Why?    

    • Python 4 is not planned

### 1.3  Run Python Program in  Codespaces 
    
|步骤| 说明|
| --- | --- |
|start Codespces |Oepn a Codespaces from the code menu|
|git pull|Pull the latest code from GitHub repository to local space|
|mkdir week1.1/session2  |create a new subfolder|
|cd week1.1/session2  |enter session2 folder|
|touch test1.py  |create a new python file|
|  |add some python code|
|python test1.py| run |
    

    • Python is an interpreted language  

    • When we type ‘python test1.py’
        • We are invoking the Python interpreter(解释器) with the input source code file  

    • When we run the interpreter a separate application
        – the PVM (Python virtual machine):
            o Reads the code line by line
            o Compiles it to machine-level instructions (byte-code)
            o Executes it  

## 2. Python syntax(语法)
     • Python recognises（识别） 2 forms of indentation（缩进）
        • <tab> space
        • 4 spaces

### 2.1 Variables（变量)
#### 2.1.1 Variables Type
|简单数据类型| 说明|举例|
| --- | --- | --- |
|int |整数| v= 1|
|float |浮点| v= 1.2|
|bool |boolean| v= True|
|complex|复数| v= 4+3i|
|String|字符串,下标从0开始| v= "hello"|


|复合数据类型| 说明|举例|
| --- | --- | --- |
|List |列表（数组)| v=  ['Google', 'Runoob', 1997, 2000]|
|Tuple |元组| v= ('Google', 'Runoob', 1997, 2000)
|Set |集合| v= {1, 2, 3, 4}  |
|Dictionary|字典| v= {'Name': 'Runoob', 'Age': 7, 'Class': 'First'}|

#### 2.1.2 Determine data type
```python  
>>> a = 111
>>> isinstance(a, int)
True
```
#### 2.1.3 rules about variables name
    •  no spaces
    •  no symbols
    •  always start with a letter
    •  don’t use reserved words (for example ‘input’ or ‘print’)

#### 2.1.4 dynamically typed(动态类型)
    •  The variable can change type through assignment
    •  The converse is called static typing  

```python  
>>> a = 111
>>> a = "speed"
>>> print(a)
>>> speed
```
### 2.1.5 strongly typed(强类型)
```python  
>>> a = input("enter a number1")
>>> b = input("enter a number2")
>>> print(a+b)
>>> error: Type conversion error
```
[Python3 基本数据类型](https://www.runoob.com/python3/python3-data-type.html)
    

#### 2.1.6 Variables 类型转换
---
```python  
y = int(2.8) # y 输出结果为 2
z = int("3") # z 输出结果为 3
```

```python  
x = float(1)     # x 输出结果为 1.0
z = float("3")   # z 输出结果为 3.0
```

```python 
y = str(2)    # y 输出结果为 '2'
z = str(3.0)  # z 输出结果为 '3.0'
z = str(True)  # z 输出结果为 'True'
```

```python 
print(bool(1))          # 输出: True
print(bool(0))          # 输出: False
print(bool(-1))         # 输出: True
print(bool(""))         # 输出: False
print(bool("hello"))    # 输出: True
```
[Python3 基本数据类型转换](https://www.runoob.com/python3/python3-type-conversion.html)

#### 2.1.7 String类型


### 2.2 input/output
---
```python  
>>> str = input("enter a number") # 输入类型是string
>>> num = int(str)                # 类型转换
```
```python  
>>> name = "lxy"
>>> print("hello world! " + name) # hello world lxy
>>> print(f"hello world! {name}") # hello world lxy, f""表示字符串内部有变量需要替换值，{}内是要替换值的变量
```
```python  
>>> pi = 3.1415926
>>> print(f"{pi:.3f}") # 3.142, .3f保留三位小数
```
[Python3 输入和输出](https://www.runoob.com/python3/python3-inputoutput.html)

### 2.3 try...exception
---
```python 
try:
    num1 = int(input('Enter your number: '))
    num2 = int(input('Enter your number: '))
    answer = num1 + num2
    print(f'{num1} + {num2} = {answer}')
except:
    print('Please enter numbers only.')
```
```python 
import sys

try:
    f = open('myfile.txt')
    s = f.readline()
    i = int(s.strip())
except OSError as err:
    print("OS error: {0}".format(err))
except ValueError:
    print("Could not convert data to an integer.")
except:
    print("Unexpected error:", sys.exc_info()[0])
    raise  # 不捕获异常，重新抛出异常
```    

[Python3 错误和异常](https://www.runoob.com/python3/python3-errors-execptions.html)

### 2.4 Math
|操作符| 说明|举例|
| --- | --- | --- |
|** |Power| 2**3 = 8 |
|// |integer division – 整数除法取商| 8 // 3 = 2|
|% |modulo division - 整数除法取余数 | 9 % 2 = 1  |
