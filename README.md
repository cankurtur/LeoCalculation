# LeoCalculation

LeoCalculation is a lightweight framework that provides users with the ability to perform basic math operations such as addition, subtraction, multiplication, and division, as well as more advanced operations like sin and cos calculations. With LeoCalculation, users can easily integrate math calculations into their applications without having to write complex mathematical functions from scratch.

## Table of contents
- :mag: [Requirements](#requirements)
- :rocket: [Installation](#installation)
- :books: [Usage](#usage)
- :key: [Licence](#licence)

## Requirements

LeoCalculation is written in Swift 5.0+ and compatible with iOS 15.0+.

## Installation

### Swift Package Manager

1. In Xcode, select File > Swift Packages > Add Package Dependency.
1. Follow the prompts using the URL for this repository
1. Select the `LeoCalculation`-prefixed libraries you want to use
1. Check-out the version that you want
1. Start coding!

## Usage
### Basic Operations
All of the methods take a `Double` as a parameter and return a `Double` value
##### Add

Adds two numbers and returns the result.
```swift
public func add(_ num1: Double, _ num2: Double) -> Double
```

##### Subtract

Subtracts the first number from the second number and returns the result.
```swift
public func subtract(_ num1: Double, _ num2: Double) -> Double
```
##### Multiply

Multiplies two numbers and returns the result.
```swift
public func multiply(_ num1: Double, _ num2: Double) -> Double
```
##### Divide

Divides the first number by the second number and returns the result. The result value is optional. If `num2` is zero, the function returns a nil value to avoid a divide by zero error. 
```swift
public func divide(_ num1: Double, _ num2: Double) -> Double?
```

#### BasicOperations enum
You can find the current operation type with the `BasicOperations` enum. If your type matches the enum type, then you can perform operations as desired.
```swift
public enum BasicOperations: String, CaseIterable, Equatable {
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "/"
}
```

This `currentOperation` method will help you determine your current operation type. It takes a string parameter and returns a matched operation case.

```swift
    public static func currentOperation(_ operation: String) -> BasicOperations? {
        return self.allCases.first{ "\($0.rawValue)" == operation}
    }
```

The `makeOperation` method will help you perform an operation with the given numbers. It takes two Double parameters and returns the result of the calculation as a `Double?`.

```swift
    public func makeOperation(_ num1: Double, _ num2: Double) -> Double? {
        switch self {
        case .add:
            return CalculationManager().add(num1, num2)
        case .subtract:
            return CalculationManager().subtract(num1, num2)
        case .multiply:
            return CalculationManager().multiply(num1, num2)
        case .divide:
            return CalculationManager().divide(num1, num2)
        }
    }
```

### Extra Operations
All of the methods take a `Double` as a parameter and return a `Double` value.

##### Sin

Returns the sin value of the given number.

```swift
public func sine(_ value: Double) -> Double 
```

##### Cos

Returns the cos value of the given number.

```swift
public func cosine(_ value: Double) -> Double 
```

#### ExtraOperations enum
You can find the current operation type with the `ExtraOperations` enum. If your type matches the enum type, then you can perform operations as desired.
```swift
public enum ExtraOperations: String, CaseIterable, Equatable {
    case sin = "sin"
    case cos = "cos"
}
```

This `currentOperation` method will help you determine your current operation type. It takes a string parameter and returns a matched operation case.

```swift
public static func currentOperation(_ operation: String) -> ExtraOperations? {
        return self.allCases.first{ "\($0.rawValue)" == operation}
}
```

This `getValue` method will help you to Get the value of the given number. It takes a Double parameter and returns the result of the calculation as a `Double?`.

```swift
public func getValue(_ num: Double) -> Double {
    switch self {
    case .sin:
        return CalculationManager().sine(num)
    case .cos:
        return CalculationManager().cosine(num)
    }
}
```

## Licence

LeoCalculation is available under the MIT license. See the LICENSE file for more info.
