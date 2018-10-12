//
//  MobileAgentViewController.m
//  IesPush
//
//  Created by wangshuai on 2018/1/23.
//  Copyright © 2018年 wangshuai. All rights reserved.
//

#import "MobileAgentViewController.h"
#import <WebKit/WebKit.h>

@interface MobileAgentViewController ()<WKNavigationDelegate,WKUIDelegate,UIScrollViewDelegate>

@end

@implementation MobileAgentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://ies-qa.byted.org/small_tools/daily_report"]]];
    [self.view addSubview:webView];
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

    
    
    // Do any additional setup after loading the view.
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
