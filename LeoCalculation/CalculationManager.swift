//
//  CalculationManager.swift
//  LeoCalculation
//
//  Created by Can Kurtur on 2.05.2023.
//

import Foundation

public class CalculationManager {
    
    public init() { }

    /// Adds two numbers and returns the result.
    ///
    /// - Parameters:
    ///   - num1: The first number.
    ///   - num2: The second number.
    /// - Returns: The sum of `num1` and `num2`.
    public func add(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }

    /// Subtracts the second number from the first number and returns the result.
    ///
    /// - Parameters:
    ///   - num1: The first number.
    ///   - num2: The second number.
    /// - Returns: The result of subtracting `num2` from `num1`.
    public func subtract(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }

    /// Multiplies two numbers and returns the result.
    ///
    /// - Parameters:
    ///   - num1: The first number.
    ///   - num2: The second number.
    /// - Returns: The product of `num1` and `num2`.
    public func multiply(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }

    /// Divides the first number by the second number and returns the result.
    ///
    /// - Parameters:
    ///   - num1: The numerator.
    ///   - num2: The denominator.
    /// - Returns: The result of dividing `num1` by `num2`, or `nil` if `num2` is zero.
    public func divide(_ num1: Double, _ num2: Double) -> Double? {
        guard num2 != 0 else { return nil } // Avoiding divide by zero error
        return num1 / num2
    }

    /// Returns the sine of the given angle.
    ///
    /// - Parameter value: The angle in radians.
    /// - Returns: The sine of `value`.
    public func sine(_ value: Double) -> Double {
        return sin(value)
    }

    /// Returns the cosine of the given angle.
    ///
    /// - Parameter value: The angle in radians.
    /// - Returns: The cosine of `value`.
    public func cosine(_ value: Double) -> Double {
        return cos(value)
    }

}
