# Outline

## Text representations
| Character Sets | defines characters | Encoding           |
| -------------- | ------------------ | ------------------ |
| Ansi           | 128                | None               |
| Unicode        | 154,998            | Utf8、Utf16、Utf32 |

## Non-numeric data & data structure representations
| Non-numeric data | Data Structures |
| ---------------- | --------------- |
| Booleans         | Arrays          |
| Date/Times       | Records         |
| Text Strings     |                 |


# 1. Text representations
    • Computers operate on binary values not text data
        All calculations done on bits and bytes  

    • They represent characters as strings of bits(比特串)  

## 1.1 Character Sets
    • A character set is a list of characters
        E.g. Alphabetic letters 

    • Each character in the set is enumerated
        E.g. 0=A, 1=B, 2=C, etc. 

    • We can then identify characters as numbers
        Can convert numbers to binary
        This is called a character set encoding(字符集编码)

## 1.2 Character Sets: ASCII(American Standard Code for Information Interchange)
### 1.2.1 Outline
    • The most ubiquitous(常见) character set & encoding is ASCII

    • ASCII set covers 128 different characters
        • Upper- and lower-case Latin alphabet characters(拉丁字符)
        • Punctuation symbols（标点符号）
        • Non-printing characters such as end of line (EOL), line feed (LF), and carriage return (CR)

    • Each character is assigned a number from 0 to 127, the ordinal value.

    • A computer stores this as 8 bits (1 byte). The first bit is always zero.

    • ASCII allows a byte to be interpreted as a character.

**1byte， 用到0-127**      
![](images/w13_txt_ascii.jpg)

### 1.2.2 Problems
    • ASCII only covers 128 characters. Doesn’t cover
        Accented Latin characters
        Greek, Cyrillic, Chinese, Arabic and other alphabets  

### 1.2.3 Solution    
    •  Use a different character set for Greek characters, Chinese characters(E.g.GBK), etc.
    •  This was the solution used in the past

    Problem:
    •  Data in foreign character sets not interpreted correctly from bytes unless the OS is aware of character encoding. (除非操作系统知道字符编码，否则外来字符集中的数据无法从字节中正确解释。)  
  

    在互联网早期，每个国家的文字都对应一个character set；比如中文是GBK； 日文是Shift-JIS，韩文是UHC；每个国家的字符二进制映射方案都不一样，所以以日文存储的文件，在中文OS中打开都是乱码，其原因是中文GBK中没有日文字符。所以为了解决这个问题，引入了双字节编码的Unicode character set，Unicode中包含世界所有国家的文字和符号，这就从根本上解决了乱码的问题。


## 1.3 Character Sets:Unicode
### 1.3.1 Character Sets：Unicode 
    •  Unicode was devised as a consistent way to encode most characters used in worldwide languages  

    •  Unicode character set defines 154,998 characters
        Modern and historic alphabets
        Symbols
        Emojis
        Control and formatting characters
        Enumerations are called code points

    •  Implemented by character encodings
            UTF-8, UTF-16, UTF-32 and others（8，16，32是指一个字符占用多少Bits编码）
            UTF-8 is the dominant standard(主导标准)


### 1.3.2 Encoding：UTF-8（Unicode  Transformation Format- 8 Bits）
|        | Unicode                               | UTF-8                           |
| ------ | ------------------------------------- | ------------------------------- |
| 是什么 | 字符集（charset）                     | 编码方案（encoding）            |
| 干什么 | 给每个字符分配唯一编号（码点 U+XXXX） | 规定如何把码点转成字节存储/传输 |
| 举例   | "中" = U+4E2D，"A" = U+0041           | U+4E2D → 3 字节 E4 B8 AD        |


![](images/w13_txt_utf8.jpg)   

### 1.3.3 How to convert code point to UTF-8 encoding？
    • Convert hex digits to binary string

    • Determine whether 1-, 2-, 3-, or 4-byte encoding based on code point

    • Insert binary string into x positions in encoding
            Pad with zeroes at front if more x’s than bit
    
 | Bytes | 字符范围(16进制) | 编码方式                            | 第一字节前缀 | 后续字节前缀 |
 | ----- | ---------------- | ----------------------------------- | ------------ | ------------ |
 | 1     | 0 -  7F          | 0xxxxxxx                            | 1个0         | 10           |
 | 2     | 80 - 7FF         | 110xxxxx  10xxxxxx                  | 2个1，1个0   | 10           |
 | 3     | 800 - FFFF       | 1110xxxx 10xxxxxx 10xxxxxx          | 3个1，1个0   | 10           |
 | 4     | >10000           | 11110xxx 10xxxxxx 10xxxxxx 10xxxxxx | 4个1，1个0   | 10           |

**例子**  

![](images/w3_charset_utf8_conv.jpg)

 **练习**     

    • Calculate the binary encodings of the following Unicode code points:

        U+007E (tilde: ~)
        U+00A9 (copyright symbol: ©)
        U+16AB (Aesc rune: ᚫ)
        U+1F911 (money mouth face emoji 🤑)
        

# 2. Other non-numeric data & data structure representations
| Non-numeric data | Data Structures |
| ---------------- | --------------- |
| Booleans         | Arrays          |
| Date/Times       | Records         |
| Text Strings     |                 |

## 2.1 Boolean  
    • Boolean data has two possible values: True (1) or False (0)

    • Ideally represent at 1-bit

    • In practice, stored in larger value
        In C, a signed 32-bit integer where 0 is false, any other value is true
        In Java, a single 16-bit Unicode character
        In Python, stored as Python integer

## 2.2 DateTime
| Type               | Outline                                                                                                                                               | Bytes                          |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------ |
| Unix epoch(纪元) time    | • number of seconds since Jan 1, 1970<br>• Year 2038 problem<br>• Date will overflow after 19 Jan 2038.<br>• Need to convert to 64- or 128-bit value. | positive 32-bit signed integer |
| Windows epoch(纪元) time | • Number of 100ns intervals since Jan 1, 1601                                                                                                         | unsigned 64-bit integer        |
|Network Time Protocol|• Number of seconds since Jan 1, 1900<br>• Implemented as fixed-point fraction: 32-bits for seconds, 32-bits for fractional part<br>• Overflow on Feb 7, 2036|NTPv4 implements as 128-bit fixed-point fraction<br>64-bits for seconds, 64-bits for fractional part
|

## 2.3 Array
![](images/w13_ary.jpg)

### 2.3.1 Size of an array in memory?  

**Total Memory Size = Size of a element × number of elements**  

    The total memory allocated for an array is equal to:

    E.g. array of 20 ASCII characters = 1 byte (size of ASCII character) × 20 = 20 bytes.
    E.g. array of 30 16-bit integers  = 2 byte (size of 16-bit integer) × 30 = 60 bytes

## 2.4 String
### 2.4.1 String as character arrays
 ![](images/w13_string.jpg)

### 2.4.2 How do programming languages represent strings?
|programming languages|Store|bytes used per character|
|---|---|---|
|C|C strings are arrays of ASCII characters terminated with a null(\0) character (size is number of characters in string + 1).| 1|
|Java|Java strings are internally stored as arrays of 16-bit Unicode characters (representing Unicode code points U+0000 to U+FFFF)|2|
|Python|Python 3.3+ strings are internally stored as arrays of Unicode characters (Unicode code points U+0000 to U+007F (ASCII) are stored in one byte)|1, 2, or 4|

## 2.5 Record
### 2.5.1 Outline
    • A record is a set of related data collected under a single name  

    • For example, an address may consist of
        House Name/Number
        Street Name
        Town/City
        County
        Post Code
        Country 

    • Each of these related data items is called a field（字段） and together they form a record(结合在一起形成Record).
        E.g. (University of Leeds, Woodhouse Lane, Leeds, West Yorkshire, LS2 9JT, UK) is an example of an address record.

    • Note that each field can be a different type of data
        Each field can be one of numeric, text data, datetime, etc.

### 2.5.2 How would Record be stored in memory?
    • Most programming languages would store this data contiguously（连续存储）
        • Each field allocated memory to store it(为每个字段分配内存)
        • Each field stored consecutively in memory（Record的所有字段依次存放在连续的地址空间中，中间没有空白)
        • Memory allocated in field order(按声明的顺序存放)  

    • Examples:
        • C structs
        • Objects in object-oriented programming (Python, Java)  

```Python
type element = record{
   name : char[2];              # array of 2 characters
   atomic_number : integer;
   atomic_weight : double;
   metallic : Boolean           # whether metallic or not 
};

# Total Memory size  = sizeof(char) *2 + sizeof(integer) + sizeof(double) + sizeof(Boolean)
```

### 2.5.3 Word Aligned Storage(Word对齐存储)  
    • Ideally, we would like the storage in memory to be:
        • Sum of the sizes of each of the fields
        • E.g., Element record is 15 bytes (assuming Boolean is 1-byte)  

    • However, many programming languages word align the fields  
        • Makes it easier for system to locate start and end of field
        • Pads field to word length (or some neat division)
        • E.g., char[3] – 3-character array would be padded with one extra byte to make 4 bytes on a 32-bit word machine
    
# 3. Image representations


