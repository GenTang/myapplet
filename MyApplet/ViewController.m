//
//  ViewController.m
//  MyApplet
//
//  Created by 杨涛 on 2020/2/13.
//  Copyright © 2020 finogeeks. All rights reserved.
//

#import "ViewController.h"
#import "AppletService.h"
#import <WebKit/WebKit.h>



@interface ViewController ()
@property (nonatomic, strong) AppletService *service;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
    [btn setTitle:@"打开小程序" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onTestClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}
- (void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBar.hidden = NO;
}
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.hidden = YES;
    
}
- (void)onTestClick:(id)sender {
    
    self.service = [[AppletService alloc] init];
    [self.service startApplet:self.navigationController];
}



@end
