//
//  CalculationManagerTests.swift
//  LeoCalculationTests
//
//  Created by Can Kurtur on 2.05.2023.
//

import XCTest
@testable import LeoCalculation

class CalculationManagerTests: XCTestCase {
    
    var calculationManager: CalculationManager!
    
    override func setUp() {
        super.setUp()
        calculationManager = CalculationManager()
    }
    
    override func tearDown() {
        calculationManager = nil
        super.tearDown()
    }
    
    func test_add_success() {
        // Given
        let firstNumber: Double = 1
        let secondNumber: Double = 2
        let expectedResult: Double = 3
        
        // When
        let result = calculationManager.add(firstNumber, secondNumber)
        
        // Then
        XCTAssertEqual(result, expectedResult, "Addition of 2 and 3 should be equal to 5")
    }
    
    func test_subtract_success() {
        // Given
        let firstNumber: Double = 5
        let secondNumber: Double = 1
        let expectedResult: Double = 4
        
        // When
        let result = calculationManager.subtract(firstNumber, secondNumber)
        
        // Then
        XCTAssertEqual(result, expectedResult, "Subtraction of 3 from 5 should be equal to 2")
    }
    
    func test_multiply_success() {
        // Given
        let firstNumber: Double = 2
        let secondNumber: Double = 4
        let expectedResult: Double = 8
        
        // When
        let result = calculationManager.multiply(firstNumber, secondNumber)
        
        // Then
        XCTAssertEqual(result, expectedResult, "Multiplication of 2 and 3 should be equal to 6")
    }
    
    func test_divide_success() {
        // Given
        let firstNumber: Double = 8
        let secondNumber: Double = 2
        let expectedResult: Double = 4
        
        // When
        let result = calculationManager.divide(firstNumber, secondNumber)
        
        // Then
        XCTAssertEqual(result, expectedResult, "Division of 10 by 2 should be equal to 5")
    }
    
    func test_divide_nil_result_success() {
        // Given
        let firstNumber: Double = 1
        let secondNumber: Double = 0
        
        // When
        let result = calculationManager.divide(firstNumber, secondNumber)
        
        // Then
        XCTAssertNil(result, "Division by zero should return nil")
    }
    
    func test_sine_success() {
        // Given
        let value: Double = Double.pi / 2
        let expectedResult: Double = 1
        
        // When
        let result = calculationManager.sine(value)
        
        // Then
        XCTAssertEqual(result, expectedResult, accuracy: 0.0001, "Sine of π/2 should be equal to 1")
    }
    
    func test_cosine_success() {
        // Given
        let value: Double = 0
        let expectedResult: Double = 1
        
        // When
        let result = calculationManager.cosine(value)
        
        // Then
        XCTAssertEqual(result, expectedResult, accuracy: 0.0001, "Cosine of 0 should be equal to 1")
    }
    
}
