//
//  IesPushKITTests.m
//  IesPushTests
//
//  Created by wangshuai on 2018/10/12.
//  Copyright © 2018年 wangshuai. All rights reserved.
//

#import <KIF/KIF.h>
#import "UIAutomationHelper.h"
#import <dlfcn.h>
#import <objc/runtime.h>
#import "UIApplication-KIFAdditions.h"
//#import <IdentifierTests/KIFUITestActor-IdentifierTests.h>
#import <XCTest/XCTest.h>


//#import "RootViewController.h"

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
- (void)test_Framework_dialog {
    
    sleep(10);
    NSLog(@"-----start");
//    [system deactivateAppForDuration:5];
//    sleep(4);
//    [[XCUIApplication new] activate];
    NSLog(@"------->end");
    
    
    
    
//    let current = XCTestWDFindElementUtils.getAppName(underElement: root!)
//    let isRunning = application.running
//    if current == appname && isRunning {
//        for i in 0 ..< application.alerts.count {
//            let alert = application.alerts.element(boundBy: i)
//            ...
//        }
//    }else{
//        application.launch()
//        self!.sleep(5)
    
    
    sleep(10);
//    可以直接调用，不过基于uiautomation 已经失效了，即使在手机中打开了这个开关。会一直抛log↓（处理系统弹框）
//    [UIAutomationHelper acknowledgeSystemAlert];
//    只能在模拟器上使用，真机情况下会有编译错误↓（处理系统弹框）
//    [tester acknowledgeSystemAlert];
//    [tester deactivateAppForDuration:10];
    NSLog(@"------>开始");
//    [tester tapViewWithAccessibilityIdentifier:@"climb"];
    UIImageView *imageview = (UIImageView*)[tester waitForViewWithAccessibilityLabel:nil value:nil traits:UIAccessibilityTraitImage];

    CGPoint imageviewCenter = [imageview.window convertPoint:imageview.center
                                                    fromView:imageview.superview];
    CGPoint minusButton = imageviewCenter;
    
    minusButton.x = 50;
//    minusButton.y = CGRectGetHeight(imageview.frame);
    NSLog(@"坐标是----------->");
    NSLog(NSStringFromCGPoint(minusButton));
    [tester tapScreenAtPoint:minusButton];
    NSLog(@"------>通过");
    
    CGRect rect = [[UIScreen mainScreen] bounds];
    CGSize size = rect.size;
    NSLog(@"屏幕大小---->");
    NSLog(NSStringFromCGSize(size));
//    //方式一：
//    //通过accessibilityLabel寻找并点击目标控件
//    //steup1.等待符合条件的控件（accessibilityLabel标示，accessibilityTraits特性，accessibilityValue文本值）
//    //steup2.点击符合条件的控件
//    - (void)tapViewWithAccessibilityLabel:(NSString *)label;
//    - (void)tapViewWithAccessibilityLabel:(NSString *)label traits:(UIAccessibilityTraits)traits;
//    - (void)tapViewWithAccessibilityLabel:(NSString *)label value:(NSString *)value traits:(UIAccessibilityTraits)traits;
//
//    //方式二：
//    //点击指定视图view中的UIAccessibilityElement对象
//    element(UIAccessibilityElement *)：UIAccessibilityElement对象
//    view(UIView *)：视图
//    - (void)tapAccessibilityElement:(UIAccessibilityElement *)element inView:(UIView *)view;
//
//    //方式三：点击屏幕某个坐标
//    - (void)tapScreenAtPoint:(CGPoint)screenPoint;
//    [tester waitfortab:<#(NSString *)#>]
//    UIView *scrollView = [tester waitForTappableViewWithAccessibilityLabel:@"climb"];
//    UIView *view = [tester waitForTappableViewWithAccessibilityLabel:nil value:nil traits:(UIAccessibilityTraitNone)];
//    [view tap];
//    UIView *buttonView;
//    UIAccessibilityElement *element;
//    [tester waitForAccessibilityElement:&element view:&buttonView withIdentifier:@"climb" fromRootView:scrollView tappable:YES];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    
    //NSIndexPath *index = [NSIndexPath indexPathForRow:1 inSection:0];
//    UITableViewCell *utvc=[tester waitForCellAtIndexPath:index inTableView:utable];
//    if (@available(iOS 11.0, *)) {
//        //判断第二行的内容是否符合预期
//        //NSLog(@"Cell Content:%@",utvc.textLabel.text);
//        XCTAssertEqualObjects(utvc.textLabel.text, @"第2行");
//    } else {
//        // Fallback on earlier versions
//    }
//    if (buttonView != NULL) {
//        [tester tapAccessibilityElement:element inView:buttonView];
//    }
    
//    - (void)tapItemAtIndexPath:(NSIndexPath *)indexPath inCollectionViewWithAccessibilityIdentifier:(NSString *)identifier;
//    - (void)tapItemAtIndexPath:(NSIndexPath *)indexPath inCollectionView:(UICollectionView *)collectionView;
//    - (UICollectionViewCell *)waitForCellAtIndexPath:(NSIndexPath *)indexPath inCollectionView:(UICollectionView *)collectionView;
//    - (UICollectionViewCell *)waitForCellAtIndexPath:(NSIndexPath *)indexPath inCollectionViewWithAccessibilityIdentifier:(NSString *)identifier;
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:1 inSection:0];
//    [[tester waitForCellAtIndexPath:indexPath inCollectionViewWithAccessibilityIdentifier:nil] tap];
    
//    [tester tapItemAtIndexPath:[NSIndexPath indexPathForItem:1 inSection:0] inCollectionViewWithAccessibilityIdentifier:nil];
//
//    [tester tapViewWithAccessibilityLabel:nil value:nil traits:(UIAccessibilityTraitImage)];
//    NSLog(@"------>");
//    NSLog([tester waitForViewWithAccessibilityLabel:nil value:nil traits:UIAccessibilityTraitImage]);
//    NSLog(@"------>");
    
//    [tester tapAccessibilityElement:(UIAccessibilityElement *) inView:<#(UIView *)#>]
//    [tester tapViewWithAccessibilityLabel:nil value:nil traits:(UIAccessibilityTraitImage)];
//    [tester tapItemAtIndexPath:[NSIndexPath indexPathForItem:2 inSection:0] inCollectionViewWithAccessibilityIdentifier:nil];
//    RGCollectionViewCell *rgcv =[[RGCollectionViewCell alloc] init];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:1 inSection:0];
//    [tester tapItemAtIndexPath:indexPath inCollectionView:rgcv];
//    [tester waitForTappableViewWithAccessibilityLabel:@"climb"];
//    [tester waitForViewWithAccessibilityLabel:@"climb"];

    //    [tester using]
//    sleep(5);
//    if([[viewTester usingLabel:@"climb"] tryFindingView]){
//        [[viewTester usingLabel:@"climb"] tap];
//    }

//    [tester tapViewWithAccessibilityLabel:@"climb"];
    
    //    [tester enterText:@"请输入姓名" intoViewWithAccessibilityLabel:@"请输入姓名"];
    
    //    [[viewTester :@"Back"]tap];
    //    [[viewTester usingValue:@"Back"] tap];
//    sleep(5);
    [tester tapViewWithAccessibilityLabel:@"+"];
    sleep(5);
    [tester tapViewWithAccessibilityLabel:@"确定"];
    sleep(5);
    
    //    [[viewTester usingLabel:@"mobile"] tap];
    //    [tester waitForAbsenceOfViewWithAccessibilityLabel:@"Label"];
    //    [[viewTester usingLabel:@"Tapped"] waitForView];
}
@end
