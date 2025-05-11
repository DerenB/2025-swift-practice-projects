
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
- [Day 4](#day-4)
    - [Type Annotations](#type-annotations)
- [Day 5](#day-5)
    - [If Statements](#if-statements)
    - [Else If](#else-if)
    - [Switch Statement](#switch-statement)
    - [Ternary Operator](#ternary-operator)
- [Day 6](#day-6)
    - [Loops](#loops)
    - [While Loop](#while-loop)
    - [Break Continue](#break-continue)
- [Day 7](#day-7)
    - [Functions](#functions)
    - [Return Statements](#return-statements)
    - [Return Multiple Values](#return-multiple-values)
    - [Custom Parameter Labels](#custom-parameter-labels)



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



# Day 4

### Type Annotations

- Declaring a type for the variable without creating an initial value
- Can be used for constants (let)
- `let playerName: String`
- `let scoreL Int`
- `var albums: [String] = [String]()` or `var albums = [String]()`



# Day 5

### If Statements

### Else If

### Switch Statement

### Ternary Operator

- `let canVote = age >= 18 ? "Yes" : "No"`



# Day 6

### Loops

### While Loop

### Break Continue



# Day 7

### Functions

- `func functionName(parameterName: parameterType)`
- `func printTimesTable(number: Int)`

### Return Statements

- Declare what type of variable should be returned by the function
- `func areLettersIdentical(string1: String, string2: String) -> Bool`

### Return Multiple Values

- Return multiple values with a Tuple
```
func getUser() -> (fName: String, lName: String) {
    (fName: "Joe", lName: "Mann")
}
let user = getUser()
let firstName = user.fName
let lastName = user.lName
```
- Can shorthand return the values into a variable: `let (firstName, lastName) = getUser()`
- Can ignore values of the return statement with "_": `let (firstName, _) = getUser()`

### Custom Parameter Labels


































