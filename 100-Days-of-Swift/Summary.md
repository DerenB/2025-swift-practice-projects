
# 100 Days of SwiftUI

Going through the [Hacking with SwiftUI](https://www.hackingwithswift.com/100/swiftui) course



# Table of Contents

- [100 Days of SwiftUI](#100-days-of-swiftui)
- [Table of Contents](#table-of-contents)
- [Day 1](#day-1)
    - [Variables](#variables)
    - [Strings](#strings)
    - [Int](#int)
    - [Double](#double)
- [Day 2](#day-2)
    - [Booleans](#booleans)
    - [String Concat \& Inter](#string-concat--inter)
- [Day 3](#day-3)
    - [Arrays](#arrays)
    - [Dictionaries](#dictionaries)
    - [Sets](#sets)
    - [Enum (Enumeration)](#enum-enumeration)



# Day 1

### Variables

- Variables: `var color = "red"`
- Constant: `let name = "Richard"`

### Strings

### Int

### Double



# Day 2

### Booleans

### String Concat & Inter

- Concatenation: `let newString = string1 + string2`
  - Cannot concatenate non-string variables without converting them to a string
- Interpolation: `let newString = "My name is \(firstName) from \(state) USA."`
  - CAN interpolate non-string variables without converting



# Day 3

### Arrays

- Declare empty array: `var scores = Array<Int>()`
- Shorthand declaration: `var scores = [Int]()`
- Arrays can only contain values of the same data type

### Dictionaries 

- Declare empty dictionary: `var heights = [String: Int]()`

### Sets

- Removes duplicates and does not save the order

### Enum (Enumeration)

- A set of named values
- Only allows you to use values that are set with the cases
```
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
```
- Shorthand:
```
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
```
- How to call: `var day = Weekday.monday`











