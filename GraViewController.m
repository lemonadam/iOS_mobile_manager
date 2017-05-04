//
//  GraViewController.m
//  IesPush
//
//  Created by wangshuai on 17/5/4.
//  Copyright © 2017年 wangshuai. All rights reserved.
//

#import "GraViewController.h"

@interface GraViewController ()

@end

@implementation GraViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((self.view.frame.size.width)/4,self.view.frame.size.height - 80,80,80);
    [button setTitle:@"+" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:60];
    [self.view addSubview:button];
    button.layer.cornerRadius = 40;
    button.tag = 1010;
    [button addTarget:self
               action:@selector(dismiss)
     forControlEvents:UIControlEventTouchUpInside];
}

- (void)dismiss {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
