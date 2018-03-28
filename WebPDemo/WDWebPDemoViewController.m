//
//  WDWebPDemoViewController.m
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/28.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "WDWebPDemoViewController.h"

#import <UIImageView+WebCache.h>

@interface WDWebPDemoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *titleImageView;

@end

@implementation WDWebPDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"animated-gif-1" withExtension:@"webp"];
    [self.titleImageView sd_setImageWithURL:url];
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
