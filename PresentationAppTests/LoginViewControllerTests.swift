//
//  LoginViewControllerTests.swift
//  PresentationAppTests
//
//  Created by Admin on 2023-04-10.
//

import Foundation

import XCTest

@testable import PresentationApp

class ViewControllerControllerTests: XCTestCase {
    
    var sut: ViewController!
    
    override func setUp() {
        super.setUp()
        sut = ViewController()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testLogoImageViewExists() {
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.logoImageView)
    
        let widthConstraint = sut.logoImageView.widthAnchor.constraint(equalToConstant: 200)
        let heightConstraint = sut.logoImageView.heightAnchor.constraint(equalToConstant: 200)

        XCTAssertEqual(widthConstraint.constant, 200)
        XCTAssertEqual(heightConstraint.constant, 200)
    }
    
    func testUsernameTextFieldExists() {
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.usernameTextField)
    }
    
    func testPasswordTextFieldExists() {
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.passwordTextField)
    }
    
    func testLoginButtonExists() {
        sut.loadViewIfNeeded()
        
        XCTAssertNotNil(sut.loginButton)
    }
    
    func testLoginButtonAction() {
        sut.loadViewIfNeeded()
        
        let action = sut.loginButton.actions(forTarget: sut, forControlEvent: .touchUpInside)
        XCTAssertTrue(action?.contains("handleLogin") ?? false, "Login button should have action `handleLogin`.")
    }
    
    func testHandleLogin() {
        sut.loadViewIfNeeded()
        
        sut.usernameTextField.text = "testuser"
        sut.passwordTextField.text = "testpassword"
        
        sut.handleLogin()
        
        // Add assertions to test login logic
    }
    
}

