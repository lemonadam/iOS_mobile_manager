//
//  IesPushUITests.m
//  IesPushUITests
//
//  Created by wangshuai on 2018/10/22.
//  Copyright © 2018年 wangshuai. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface IesPushUITests : XCTestCase

@end

@implementation IesPushUITests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.

    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;

    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
   [[XCUIDevice sharedDevice] pressButton:XCUIDeviceButtonHome];
    sleep(4);
    [[XCUIApplication new] activate];
    NSLog(@"------->end");
    [XCUIDevice sharedDevice].orientation = UIDeviceOrientationPortrait;
    [[XCUIDevice sharedDevice] pressButton:XCUIDeviceButtonHome];
        [[XCUIDevice sharedDevice] pressButton:XCUIDeviceButtonHome];
    [[XCUIDevice sharedDevice] pressButton:XCUIDeviceButtonHome];
    [[[XCUIApplication alloc] init]/*@START_MENU_TOKEN@*/.otherElements[@"com.lemon.push"]/*[[".windows[@\"SBSwitcherWindow\"]",".otherElements[@\"AppSwitcherContentView\"]",".otherElements[@\"IES\\U624b\\U673a\\U7ba1\\U7406\"]",".otherElements[@\"com.lemon.push\"]"],[[[-1,3],[-1,2],[-1,1,2],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/ tap];
    [XCUIDevice sharedDevice].orientation = UIDeviceOrientationPortrait;
    
   
    
}

@end
