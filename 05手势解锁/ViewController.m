//
//  ViewController.m
//  05手势解锁
//
//  Created by apple on 15-6-10.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "SteveZUnlockView.h"
@interface ViewController () <SteveZUnlockViewDelegate>
@property (weak, nonatomic) IBOutlet SteveZUnlockView *unlockView;

@end

@implementation ViewController

- (BOOL)unlockView:(SteveZUnlockView *)unlockView withPassword:(NSString *)password
{
    if ([password isEqualToString:@"012"]) {
        return YES;
    } else {
        return NO;
    }
}

//- (void)loadView;
//- (void)viewDidLoad
//- (void)viewWillAppear:(BOOL)animated
//- (UIView *)viewd

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@", self.unlockView.backgroundColor);
    
    // 设置“解锁view”的代理
    self.unlockView.delegate = self;
    
    // 设置控制器view的背景色为某张图片
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"HomeButtomBG"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
