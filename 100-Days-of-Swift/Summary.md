
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
- [Day 8](#day-8)
    - [Function Default Parameters](#function-default-parameters)
    - [Error Handling](#error-handling)
- [Day 9](#day-9)
    - [Closures](#closures)
    - [Closures with Parameters](#closures-with-parameters)
    - [Closures with Return Type](#closures-with-return-type)
    - [Closures with Parameters \& Return type](#closures-with-parameters--return-type)
- [Day 10](#day-10)
    - [Structs](#structs)
    - [Struct Property Changes](#struct-property-changes)
    - [Struct Initializers](#struct-initializers)
- [Day 11](#day-11)
    - [Private Struct](#private-struct)
- [Day 12](#day-12)



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



# Day 8

### Function Default Parameters

- `func printTimes(for number: Int, end: Int = 12)`

### Error Handling



# Day 9

### Closures

- Closure Example
- Code has to be inside the brackets { }
```
let sayHello = {
    print("Hi There)
}

sayHello() // Prints the statement statement
```

### Closures with Parameters

```
let payment = { (user: String) in
    print ("Paying \(user)...")
}
```

### Closures with Return Type

```
let payment = { () -> Bool in 
    return true
}
```

### Closures with Parameters & Return type

- String parameter, returns string
- The `in` marks the end of the parameters/return type, and the start of the closure
```
let sayHello = { (name: String) -> String in
    "Hi \(name)"
}
```



# Day 10

### Structs

- Simple Struct:
- Variables and constants in a struct are "properties"
- Functions in a struct are "methods"
```
struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) \(year) \(artist)")
    }
}
```

### Struct Property Changes

- Can have `didSet` or `willSet` values for when the value in a struct changes
- The code will run when the value changes or before
- Swift automatically has `oldValue` and `newValue`
```
struct Game {
    var score = 0 {
        willSet {
            print ("The current score is \(score)")
            print ("The new score is \(newValue) ")
        }

        didSet {
            print ("The score is now \(score)")
            print ("The score used to be \()oldValue")
        }
    }
}
```

### Struct Initializers 

- Can customize the initializer for a struct
- All properties must have a value by the end of initialization
```
struct Player {
    let name: String
    let number: Int

    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}
```



# Day 11

### Private Struct

- Setting a property to private likely means you'll need an initializer
- Can make struct properties private so they can't be changed
- `private var funds = 0`
- Can make them read only but not settable
- `private(set) var funds = 0`



# Day 12






































