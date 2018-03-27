//
//  WDLoadGifViewController.m
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/27.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "WDLoadGifViewController.h"
#import "UIImage+animatedGIF.h"


@interface WDLoadGifViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *titleImageView;

@end

@implementation WDLoadGifViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"1" withExtension:@"gif"];
    UIImage *image = [UIImage animatedImageWithAnimatedGIFURL:url];
    self.titleImageView.image = image;
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
