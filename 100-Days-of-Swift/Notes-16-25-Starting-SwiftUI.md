
# Days 16 to 25



# Table of Contents

- [Days 16 to 25](#days-16-to-25)
- [Table of Contents](#table-of-contents)
- [Day 16](#day-16)
  - [App Basics](#app-basics)
  - [Sections](#sections)
  - [Safe Area \& Navigation](#safe-area--navigation)
  - [State](#state)
  - [Binding State to User Interface Controls](#binding-state-to-user-interface-controls)
  - [ForEach loop](#foreach-loop)
- [Day 17](#day-17)
  - [State Change](#state-change)
  - [Currency Entry Fields](#currency-entry-fields)
  - [Numerical Keyboard](#numerical-keyboard)
  - [Section Titles](#section-titles)
  - [New Page Picker vs Dropdown](#new-page-picker-vs-dropdown)
  - [Hiding the Keyboard](#hiding-the-keyboard)
- [Day 18: Review](#day-18-review)



# Day 16

## App Basics

- Code for launching the app:
  - `WeSplitApp.swift`
  - Items that are created when the app launches and stay alive, go in here
- Initial UI
  - `ContentView.swift`
- Assets
  - `Assets.xcassets`

## Sections

- Can split items on the screen with `Section` 

## Safe Area & Navigation

- Safe Area: Everywhere between the home button and the island
- Navigation
  - At the top of the page
  - Place Code inside `NavigationStack` brackets
- Navigation Title
  - Add a modifier for the title: `.navigationTitle("")`
  - Goes attached to the inner content, NOT NavigationStack
- Smaller Navigation Title
  - Add a 2nd modifier: `.navigationBarTitleDisplayMode(.inline)`

## State

- `ContentView` is a struct so it is *immutable*
- Can't mutate computed properties such as `var body`
- Solution: "Property Wrapper"
  - add `@State` to a variable
  - Specifically designed for simple properties that are stored in 1 view
  - Apple recommends adding `private` to control access
```
struct ContentView: View {
  @State private var tapCount = 0
  
  var body: some View {
    Button("Tap Count: \(tapCount)") {
      self.tapCount += 1
    }
  }
}
```

## Binding State to User Interface Controls

- Two-Way Binding
  - Able to read the value of a property and write back to it as it changes
  - A textbox that shows a user's name that can be changed
  - Use a `$` to indicate a two-way bind field
```
struct ContentView: View {
  @State private var name = ""
  
  var body: some View {
    Form {
      TextField("Enter your name", text: $name)
      Text("Your name is \(name)")
    }
  }
}
```

## ForEach loop

```
struct ContentView: View {
  let students = ["Harry", "Hermione", "Ron"]
  @State private var selectedStudent = "Harry"
  
  var body: some View {
    NavigationStack {
      Form {
        Picker("Select your Student", selection: $selectedStudent) {
          ForEach(students, id: \.self) {
              Text($0)
          }
        }
      }
    }
  }
}
```



# Day 17

 ## State Change

 - When a `@State` property changes, SwiftUI will re-invoke the `body` property and reload the UI

 ## Currency Entry Fields

 - Gets the user's default currency, or uses USD if nothing found:
 - `TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))`

## Numerical Keyboard

- Add a modifier to a text field that specifies the keyboard type
- `.keyboardType(.decimalPad)`
- `.keyboardType(.numberPad)`

## Section Titles

- Older Option: `Section(header: Text("Picker: New Page"))`
- Newer Option: `Section("User Input")`

## New Page Picker vs Dropdown

## Hiding the Keyboard

- At top: `@FocusState private var amountIsFocused: Bool`
- As modifier on form:
```
.toolbar {
  if amountIsFocused {
    Button("Done") {
      amountIsFocused = false
    }
  }
}
```



# Day 18: Review







