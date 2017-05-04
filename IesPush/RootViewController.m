//
//  SecondViewController.m
//  IesPush
//
//  Created by wangshuai on 17/4/19.
//  Copyright © 2017年 wangshuai. All rights reserved.
//



#define REUSE_ID @"reuse"
#import "RootViewController.h"
#import "RGCollectionViewCell.h"
#import "MobileViewController.h"
#import <HYBControllerTransitions/HYBBubbleTransition.h>
#import "MobileNationController.h"
#import "GraViewController.h"

@interface RootViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray *listOfData;
@property (nonatomic, strong) HYBBubbleTransition *bubbleTransition;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //    SecondViewController * vc = [board instantiateViewControllerWithIdentifier:@"test"];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.listOfData = [@[@"climb",@"mobile",@"lake",@"shark",@"whale",@"climb",@"ice",@"lake",@"shark",@"whale",@"climb",@"ice",@"lake",@"shark",@"whale"]mutableCopy];
    
    //---> setting up the look of the collection View + the main View
    UIVisualEffect *effect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc]initWithEffect:effect];
    effectView.frame = self.collectionView.bounds;
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.collectionView.bounds];
    imageView.image = [UIImage imageNamed:@"ice"];
    
    UIView *viewFrame = [[UIView alloc]initWithFrame:self.collectionView.bounds];
    [viewFrame addSubview:imageView];
    [viewFrame addSubview:effectView];
    
    self.collectionView.backgroundView = viewFrame;
    
    
    UIVisualEffectView *mainEffectView = [[UIVisualEffectView alloc]initWithEffect:effect];
    mainEffectView.frame = self.view.bounds;
    UIImageView *mainImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    mainImageView.image = [UIImage imageNamed:@"ice"];
    UIView *mainViewFrame = [[UIView alloc]initWithFrame:self.view.bounds];
    [mainViewFrame addSubview:mainImageView];
    [mainViewFrame addSubview:mainEffectView];
    
    [self.view insertSubview:mainViewFrame belowSubview:self.collectionView];
    
}
#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return  self.listOfData.count;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    RGCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:REUSE_ID forIndexPath:indexPath];
    
    [self configureCell:cell forItemAtIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(RGCollectionViewCell *)cell
   forItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *nameOfImage = self.listOfData[indexPath.section];
    cell.imageView.image = [UIImage imageNamed:nameOfImage];
    cell.imageView.tag = nameOfImage;
    cell.label.text = nameOfImage;
    
    [cell.imageView setUserInteractionEnabled:YES];
    [cell.imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickCategory:)]];
    
    
    
}

-(void)clickCategory:(UITapGestureRecognizer *)gestureRecognizer
{
    UIImageView *viewClicked=[gestureRecognizer view];
    NSLog(@"%@",viewClicked.tag);
    NSString *tag=[NSString stringWithFormat:@"%@",viewClicked.tag];
    NSLog(@"%@",tag);
    NSString *image_tag=[NSString stringWithFormat:@"%ld",(long) viewClicked.tag];
    NSLog(@"imageview is -->: %@",tag);
    // Remember to own it strongly
    // Because delegate is weak reference, and it will be released after out of the function body.
    self.bubbleTransition = [[HYBBubbleTransition alloc] initWithPresented:^(UIViewController *presented, UIViewController *presenting, UIViewController *source, HYBBaseTransition *transition) {
        // You need to cast type to the real subclass type.
        HYBBubbleTransition *bubble = (HYBBubbleTransition *)transition;
        
        // If you want to use Spring animation, set to YES.
        // Default is NO.
        //    bubble.animatedWithSpring = YES;
        bubble.bubbleColor = presented.view.backgroundColor;
        
        // 由于一个控制器有导航，一个没有，导致会有64的误差，所以要记得处理这种情况
        CGPoint center = [self.view viewWithTag:1010].center;
        center.y += 64;
        
        bubble.bubbleStartPoint = center;
    } dismissed:^(UIViewController *dismissed, HYBBaseTransition *transition) {
        // Do nothing and it is ok here.
        // If you really want to do something, here you can set the mode.
        // But inside the super class, it is set to be automally.
        // So you do this has no meaning.
        transition.transitionMode = kHYBTransitionDismiss;
    }];
    
    
    
    if ([tag isEqualToString:@"mobile"] ) {
        MobileViewController *mvvc = [[MobileViewController alloc] init];
//        MobileNationController *mnvc = [[MobileNationController alloc ]initWithRootViewController:mvvc];
        
//        MobileViewController *vc = [[MobileViewController alloc] init];
        
        mvvc.modalPresentationStyle = UIModalPresentationCustom;
        mvvc.transitioningDelegate = self.bubbleTransition;
        [self presentViewController:mvvc animated:YES completion:NULL];    }
    
    if ([tag isEqualToString:@"climb"] ) {
        
        GraViewController *vc = [[GraViewController alloc] init];
        vc.modalPresentationStyle = UIModalPresentationCustom;
        vc.transitioningDelegate = self.bubbleTransition;
        [self presentViewController:vc animated:YES completion:NULL];    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
