//
//  SecondViewController.m
//  IesPush
//
//  Created by wangshuai on 17/4/19.
//  Copyright © 2017年 wangshuai. All rights reserved.
//



#define REUSE_ID @"reuse"
#import "SecondViewController.h"
#import "RGCollectionViewCell.h"
//#import "GraViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray *listOfData;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    SecondViewController * vc = [board instantiateViewControllerWithIdentifier:@"test"];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.listOfData = [@[@"climb",@"ice",@"lake",@"shark",@"whale",@"climb",@"ice",@"lake",@"shark",@"whale",@"climb",@"ice",@"lake",@"shark",@"whale"]mutableCopy];
    
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
    if ([tag isEqualToString:@"ice"] ) {
//        GraViewController *secondVC = [[GraViewController alloc] init];
//        [self presentViewController:secondVC animated:YES completion:nil];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
