//
//  AppiuTestDemoUITests.swift
//  AppiuTestDemoUITests
//
//  Created by Fernando on 2018/5/18.
//  Copyright © 2018年 Liteng. All rights reserved.
//

import XCTest

class AppiuTestDemoUITests: XCTestCase,XCUIScreenshotProviding {
    func screenshot() -> XCUIScreenshot {
        let app = XCUIApplication()
        let screenshot = app.windows.firstMatch.screenshot()
        return screenshot
    }
    
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.textFields["username"].typeText("admin")
        
        
        app.secureTextFields["password"].tap()
        app.secureTextFields["password"].typeText("123456")
        app.buttons["Confirm"].tap()
        
        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.lifetime = .keepAlways
        add(attachment)
        

        
        app.buttons["WebView"].tap()
        
        //
//        print(app.screenshot().image)
        
//        app.otherElements["百度一下"].children(matching: .textField).element.tap()
//        app.otherElements["百度一下"].children(matching: .textField).element.typeText("Hello")
//        app/*@START_MENU_TOKEN@*/.buttons["Search"]/*[[".keyboards.buttons[\"Search\"]",".buttons[\"Search\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.otherElements["Hello - 百度"].children(matching: .other).element(boundBy: 8).children(matching: .link).element(boundBy: 1).tap()
        
        XCUIDevice.shared.orientation = .faceUp
        XCUIDevice.shared.orientation = .portrait
        XCUIDevice.shared.orientation = .faceUp
        

        let webViewsQuery = app.webViews
        let searchField = webViewsQuery.otherElements["百度一下"].children(matching: .searchField).element
        searchField.tap()
        XCUIDevice.shared.orientation = .portrait
        app/*@START_MENU_TOKEN@*/.keys["h"]/*[[".keyboards.keys[\"h\"]",".keys[\"h\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        searchField.typeText("h")
        app/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        searchField.typeText("e")
        
        let lKey = app/*@START_MENU_TOKEN@*/.keys["l"]/*[[".keyboards.keys[\"l\"]",".keys[\"l\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        lKey.tap()
        searchField.typeText("l")
        lKey.tap()
        searchField.typeText("l")
        app/*@START_MENU_TOKEN@*/.keys["o"]/*[[".keyboards.keys[\"o\"]",".keys[\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        searchField.typeText("o")
        app/*@START_MENU_TOKEN@*/.buttons["Search"]/*[[".keyboards",".buttons[\"搜索\"]",".buttons[\"Search\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        webViewsQuery/*@START_MENU_TOKEN@*/.buttons["百度一下"]/*[[".otherElements[\"百度一下\"].buttons[\"百度一下\"]",".buttons[\"百度一下\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        XCUIDevice.shared.orientation = .faceUp
        
        
        sleep(5)
        
        
    }
    
}
