//
//  DashboardViewTest.swift
//  QuotesUITests
//
//  Created by Mihai Pantiru on 14/01/2020.
//  Copyright © 2020 Agile. All rights reserved.
//

import XCTest

class DashboardViewTest: XCTestCase {
    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    func testButtonAndTextExists() {
        let app = XCUIApplication()
        let happyDayStaticText = app.staticTexts["Happy day!"]
        let randomQuoteButton = app.buttons["Random quote"]
        
        XCTAssertTrue(happyDayStaticText.exists)
        XCTAssertTrue(randomQuoteButton.exists)
    }
}
