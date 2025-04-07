//
//  MyMoviesTests.swift
//  MyMoviesTests
//
//  Created by Vitor Henrique Barreiro Marinho on 07/04/25.
//

import XCTest
import MyMovies

final class LoginViewModelTests: XCTestCase {

    var viewModel: LoginViewModel!

    override func setUp() {
        super.setUp()
        viewModel = LoginViewModel()
    }

    override func tearDown() {
        viewModel = nil
        super.tearDown()
    }

    func testValidEmail() {
        XCTAssertTrue(viewModel.isValidEmail("teste@email.com"))
    }

    func testEmailWithoutAtSymbol() {
        XCTAssertFalse(viewModel.isValidEmail("testeemail.com"))
    }

    func testEmailWithoutDomain() {
        XCTAssertFalse(viewModel.isValidEmail("teste@"))
    }

    func testEmailWithInvalidCharacter() {
        XCTAssertFalse(viewModel.isValidEmail("te$te@email.com"))
    }

    func testEmailWithSubdomain() {
        XCTAssertTrue(viewModel.isValidEmail("user@mail.co.uk"))
    }

    func testEmptyEmail() {
        XCTAssertFalse(viewModel.isValidEmail(""))
    }

    func testEmailWithWhitespace() {
        XCTAssertFalse(viewModel.isValidEmail(" user@email.com "))
    }

    func testEmailWithUppercaseLetters() {
        XCTAssertTrue(viewModel.isValidEmail("USER@EMAIL.COM"))
    }
    //
    //
}
