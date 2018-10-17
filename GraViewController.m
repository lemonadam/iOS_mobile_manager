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
    //    系统弹窗测试代码
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提示" message:@"确定要提交吗？" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * cancelAc = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //点击取消要执行的代码
        
    }];
    UIAlertAction *comfirmAc = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:NULL];
        //点击确定要执行的代码
    }];
    [alertVC addAction:cancelAc];
    [alertVC addAction:comfirmAc];
    [self presentViewController:alertVC animated:YES completion:nil];
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
