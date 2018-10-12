//
//  IesPushKITTests.m
//  IesPushTests
//
//  Created by wangshuai on 2018/10/12.
//  Copyright © 2018年 wangshuai. All rights reserved.
//

#import <KIF/KIF.h>
#import <AFNetworking/AFNetworking.h>

@interface IesPushKITTests : KIFTestCase

@end

@implementation IesPushKITTests

- (void)test_Framework {
    sleep(10);
    [tester waitForViewWithAccessibilityLabel:@"Back"];
//    [tester using]
    sleep(10);
    [tester tapViewWithAccessibilityLabel:@"Back"];
//    [tester enterText:@"请输入姓名" intoViewWithAccessibilityLabel:@"请输入姓名"];
    
//    [[viewTester :@"Back"]tap];
//    [[viewTester usingValue:@"Back"] tap];
    sleep(10);
//    [[viewTester usingLabel:@"mobile"] tap];
//    [tester waitForAbsenceOfViewWithAccessibilityLabel:@"Label"];
//    [[viewTester usingLabel:@"Tapped"] waitForView];
}
@end
