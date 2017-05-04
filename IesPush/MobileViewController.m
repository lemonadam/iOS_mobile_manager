//
//  RootViewController.m
//  IesPush
//
//  Created by wangshuai on 17/4/19.
//  Copyright © 2017年 wangshuai. All rights reserved.
//
#import <sys/utsname.h>
#import "MobileViewController.h"
#import "AppDelegate.h"
#include <sys/types.h>
#include <sys/sysctl.h>
//#import "AFNetworking.h"
#import <AdSupport/AdSupport.h>
#import <AFNetworking/AFNetworking.h>


@interface MobileViewController ()
{
    UITextView * _inputTV;
    UILabel *_placeHolderLabel;
    UIButton *_button;
}

@end

@implementation MobileViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"手机管理系统";
    }
    return self;
}

- (void)loadView
{
    
    
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *model = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSString *system = [[UIDevice currentDevice] systemVersion];
    UIView *baseView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    self.view = baseView;
    int width=[[UIScreen mainScreen] bounds].size.width;
    int height=[[UIScreen mainScreen] bounds].size.height;
    UILabel *textLabel1 = [[UILabel alloc] init];
    textLabel1.font = [UIFont systemFontOfSize:30];
    textLabel1.text = @"品牌 :";
    textLabel1.frame = CGRectMake(width/8, height/5, 140, 40);
    UILabel *textLabel11 = [[UILabel alloc] init];
    textLabel11.font = [UIFont systemFontOfSize:30];
    textLabel11.text = @"Apple";
    textLabel11.frame = CGRectMake(width/2.7, height/5, 300, 40);
    UILabel *textLabel2 = [[UILabel alloc] init];
    textLabel2.font = [UIFont systemFontOfSize:30];
    textLabel2.text = @"型号 :";
    textLabel2.frame = CGRectMake(width/8, (1.5*height)/5, 140, 40);
    UILabel *textLabel22 = [[UILabel alloc] init];
    textLabel22.font = [UIFont systemFontOfSize:30];
    textLabel22.text = model;
    textLabel22.frame = CGRectMake(width/2.7, (1.5*height)/5, 300, 40);
    UILabel *textLabel3 = [[UILabel alloc] init];
    textLabel3.font = [UIFont systemFontOfSize:30];
    textLabel3.text = @"版本 :";
    textLabel3.frame = CGRectMake(width/8, (2*height)/5, 140, 40);
    UILabel *textLabel33 = [[UILabel alloc] init];
    textLabel33.font = [UIFont systemFontOfSize:30];
    textLabel33.text = system;
    textLabel33.frame = CGRectMake(width/2.7, (2*height)/5, 300, 40);
    _inputTV = [[UITextView alloc] initWithFrame:CGRectMake(width/4, (2.7*height)/5, 200, 40)];
    _inputTV.delegate = self;
    _inputTV.layer.borderColor = UIColor.grayColor.CGColor;
    _inputTV.layer.borderWidth = 1;
    _inputTV.layer.cornerRadius = 6;
    _inputTV.font = [UIFont boldSystemFontOfSize:27];
    _inputTV.layer.masksToBounds = YES;
    _inputTV.backgroundColor = [UIColor clearColor];
    _inputTV.textColor = [UIColor blackColor];
    _inputTV.keyboardType = UIKeyboardAppearanceDefault;
    _inputTV.returnKeyType = UIReturnKeyDone;
    _placeHolderLabel = [[UILabel alloc] initWithFrame:CGRectMake(3, 3,200,40)];
    _placeHolderLabel.textAlignment = NSTextAlignmentLeft;
    _placeHolderLabel.font = [UIFont systemFontOfSize:30];
    _placeHolderLabel.textColor=[UIColor grayColor];
    _placeHolderLabel.text = @"请输入姓名";
    _button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _button.titleLabel.font = [UIFont systemFontOfSize: 30];
    _button.enabled=false;
    [_button setTitle:@"提交" forState:UIControlStateNormal];
    [_button setFrame:CGRectMake(width/3, (3.5*height)/5, 140, 40)];
    [_button addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    UIButton *button_url=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    button_url.titleLabel.font=[UIFont systemFontOfSize:16];
    [button_url setTitle:@"友情链接：http://ci.xx.org/build/" forState:UIControlStateNormal];
    [button_url setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button_url setFrame:CGRectMake(width/7, (4.4*height)/5, 300, 100)];
    [button_url addTarget:self action:@selector(openurl) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *item = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [item setTitle:@"借用机器" forState:UIControlStateNormal];
    [item setFrame:CGRectMake(width-140, 0, 100, 45)];
    item.titleLabel.font = [UIFont systemFontOfSize: 20];
    [item addTarget:self action:@selector(pushVC) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:item];
//    self.navigationItem.rightBarButtonItem = rightItem;
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [back setTitle:@"Back" forState:UIControlStateNormal];
    [back setFrame:CGRectMake(40, 0, 60, 45)];
    back.titleLabel.font = [UIFont systemFontOfSize: 20];
    [back addTarget:self action:@selector(backVC) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:back];
//    self.navigationItem.leftBarButtonItem = leftItem;
    
    [self.view addSubview:_button];
    
    [self.view addSubview:textLabel1];
    [self.view addSubview:textLabel11];
    [self.view addSubview:textLabel2];
    [self.view addSubview:textLabel22];
    [self.view addSubview:textLabel3];
    [self.view addSubview:textLabel33];
    [self.view addSubview:_inputTV];
    [self.view addSubview:button_url];
    [self.view addSubview:item];
    [self.view addSubview:back];
    [_inputTV addSubview:_placeHolderLabel];
    
    
    
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUpForDismissKeyboard];
    self.view.backgroundColor = [UIColor whiteColor];
    
}


- (void)setUpForDismissKeyboard {
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    UITapGestureRecognizer *singleTapGR =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(tapAnywhereToDismissKeyboard:)];
    NSOperationQueue *mainQuene =[NSOperationQueue mainQueue];
    [nc addObserverForName:UIKeyboardWillShowNotification
                    object:nil
                     queue:mainQuene
                usingBlock:^(NSNotification *note){
                    [self.view addGestureRecognizer:singleTapGR];
                }];
    [nc addObserverForName:UIKeyboardWillHideNotification
                    object:nil
                     queue:mainQuene
                usingBlock:^(NSNotification *note){
                    [self.view removeGestureRecognizer:singleTapGR];
                }];
}

- (void)tapAnywhereToDismissKeyboard:(UIGestureRecognizer *)gestureRecognizer {
    //此method会将self.view里所有的subview的first responder都resign掉
    [self.view endEditing:YES];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        if (textView.text.length != 0 )
        {
            [self test];
        }
        
        return NO;
    }
    
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView
{
    if (textView.text.length == 0 )
    {
        _placeHolderLabel.text = @"请输入姓名";
        
        _button.enabled=false;
    }
    else
    {
        _placeHolderLabel.text = @"";
        [_button setTitle:@"提交" forState:UIControlStateNormal];
        _button.enabled=true;
        
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // 默认是隐藏的
    [self.navigationController setToolbarHidden:YES animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Target Action

- (void)openurl{
    NSURL *url = [NSURL URLWithString:@"http:"];
    [[UIApplication sharedApplication] openURL:url];
}



- (void)test
{
    
    //    {
    //        "imei": "xxx",
    //        "brand": "apple",
    //        "type": "iPhone 6s",
    //        "system": "iOS",
    //        "sys_ver": "10.1.1",
    //        "current_user": "王帅",
    //        "push_token": "xxxxx"
    //    }
    
    AppDelegate *appDelegate=[[UIApplication sharedApplication] delegate];
    NSData *push_token = appDelegate.token;
    //    服务端还要修改apns地址,gateway.sandbox.push.apple.com改为gateway.push.apple.com
    NSString *imei = [[UIDevice currentDevice].identifierForVendor UUIDString];
    NSString *adId = [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
    NSString *brand = @"Apple";
    NSString *system = @"iOS";
    NSString *sys_ver = [[UIDevice currentDevice] systemVersion];
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *model = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSString *current_user = _inputTV.text;
    NSLog(@"--------------------");
    NSString *pushToken = [[[[push_token description]
                             
                             stringByReplacingOccurrencesOfString:@"<" withString:@""]
                            
                            stringByReplacingOccurrencesOfString:@">" withString:@""]
                           
                           stringByReplacingOccurrencesOfString:@" " withString:@""] ;
    NSLog(@"My token: %@", pushToken);
    
    NSLog(@"My imei issss: %@", imei);
    NSLog(@"My brand issss: %@", brand);
    NSLog(@"My model issss: %@", model);
    NSLog(@"My system issss: %@", system);
    NSLog(@"My sys_ver issss: %@", sys_ver);
    NSLog(@"My current_user issss: %@", current_user);
    NSLog(@"My push_token issss: %@", push_token);
    
    
    
    
    NSDictionary *body = @{@"imei":adId,@"brand":brand,@"type":model,@"system":system,@"sys_ver":sys_ver,@"current_user":current_user,@"push_token":pushToken};
    NSString *json = [self DataTOjsonString:body];
    
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSMutableURLRequest *req = [[AFJSONRequestSerializer serializer]requestWithMethod:@"POST" URLString:@"https://ies-qa.byted.org/small_tools/data/submit_phone_data" parameters:nil error:nil];
    
    req.timeoutInterval= [[[NSUserDefaults standardUserDefaults] valueForKey:@"timeoutInterval"] longValue];
    [req setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [req setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [req setHTTPBody:[json dataUsingEncoding:NSUTF8StringEncoding]];
    
    
    [[manager dataTaskWithRequest:req completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        
        if (!error) {
            NSLog(@"Reply JSON: %@", responseObject);
            _placeHolderLabel.text = @"请输入姓名";
            [_button setTitle:@"提交成功" forState:UIControlStateNormal];
            _inputTV.text=@"";
            _button.enabled=false;
            if ([responseObject isKindOfClass:[NSDictionary class]]) {
                //blah blah
            }
        } else {
            _placeHolderLabel.text = @"失败,重输入";
            _inputTV.text=@"";
            //            [self performSelector:@selector(delayMethod) withObject:nil afterDelay:1.0f];
            NSLog(@"Error: %@, %@, %@", error, response, responseObject);
        }
    }] resume];
    
}

-(NSString*)DataTOjsonString:(id)object
{
    NSString *jsonString = nil;
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:object
                                                       options:NSJSONWritingPrettyPrinted // Pass 0 if you don't care about the readability of the generated string
                                                         error:&error];
    if (! jsonData) {
        NSLog(@"Got an error: %@", error);
    } else {
        jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
}

- (void)pushVC
{
//    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    SecondViewController * vc = [board instantiateViewControllerWithIdentifier:@"second"];
//    [self.navigationController pushViewController:vc animated:YES];
    //    [secondVC release];
}

- (void)backVC
{
    [self dismissViewControllerAnimated:YES completion:NULL];
//    UIStoryboard *board = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //    SecondViewController * vc = [board instantiateViewControllerWithIdentifier:@"second"];
    //    [self.navigationController pushViewController:vc animated:YES];
    //    [secondVC release];
}


@end
