//
//  ExtraOperations.swift
//  LeoCalculation
//
//  Created by Can Kurtur on 3.05.2023.
//

import Foundation

/// Manages extra operations. Have to use operations type like in the case.
///
/// - Cases:
///   - sin: Get sinus value of the given number if the operator string is "sin"
///   - cos: Get cosinus value of the given number if the operator string is "cos"
public enum ExtraOperations: String, CaseIterable, Equatable {
    
    case sin = "sin"
    case cos = "cos"
    
    /// Get the value of the given number.
    ///
    /// - Parameters:
    ///   - num: The given number.
    public func getValue(_ num: Double) -> Double {
        switch self {
        case .sin:
            return CalculationManager().sine(num)
        case .cos:
            return CalculationManager().cosine(num)
        }
    }
}
