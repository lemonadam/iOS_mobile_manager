//
//  IesPushKITTests.m
//  IesPushTests
//
//  Created by wangshuai on 2018/10/12.
//  Copyright © 2018年 wangshuai. All rights reserved.
//

#import <KIF/KIF.h>
#import <AFNetworking/AFNetworking.h>
#import "RGPaperLayout.h"
#import "RGCollectionViewCell.h"
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
    
//
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
