//
//  BasicOperations.swift
//  LeoCalculation
//
//  Created by Can Kurtur on 3.05.2023.
//

import Foundation

/// Manages basic operations. Have to use operations type like in the case.
///
/// - Cases:
///   - add: Add two given number if the operator string is "+"
///   - substract: Subtract two given number if the operator string is "-"
///   - multiply: Multiply two given number if the operator string is "x"
///   - divide: Divide two given number if the operator string is "/"
public enum BasicOperations: String, CaseIterable, Equatable {
    
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "/"
    
    /// Get the current operation with given string paremeter.
    ///
    /// - Parameters:
    ///   - operation: The operation symbol.
    public static func currentOperation(_ operation: String) -> BasicOperations? {
        return self.allCases.first{ "\($0.rawValue)" == operation}
    }
    
    /// Make the operation with given numbers.
    ///
    /// - Parameters:
    ///   - num1: The first number.
    ///   - num2: The second number.
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
}
