# Weather UI App 

# Basics

- VStack, HStack, ZStack
- Make an item ignore safe area:
  - Add modifier `.edgesIgnoringSafeArea(.all)
- Order of modifiers matters

### Creating a Custom Color

- Open `Assets.xcassets`
- In the new column on the left, click "+" icon at the bottom
- Select "Color Set"

# Extract View to  Struct

- Can extract a view into a separate struct for more clean code
```
struct NameOfStruct: View {
  variables

  var body: some View {
    // content
  }
}
```

# Binding variables

- used to pass variables to views
- Names match the state view at the top
```
@State private var isNight = False

@Binding var isNight: Bool
```

- Called by adding a $:
```
BackgroundView(isNight: $isNight)
```
















