//
//  WDImageViewAnimateDemoViewController.m
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/27.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "WDImageViewAnimateDemoViewController.h"

@interface WDImageViewAnimateDemoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *titleImageView;

@end

@implementation WDImageViewAnimateDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.titleImageView.animationDuration = 8.0f;
    self.titleImageView.animationRepeatCount = 11.0f;
    NSMutableArray *images = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 1; i < 17 ; ++i) {
        NSString *imageName = nil;
        if (i < 10) {
            imageName = [NSString stringWithFormat:@"NatGeo0%li.jpg",i];
        }else{
            imageName = [NSString stringWithFormat:@"NatGeo%li.jpg",i];
        }
        UIImage *img = [UIImage imageNamed:imageName];
        [images addObject:img];
    }
    self.titleImageView.animationImages = images;
    [self.titleImageView startAnimating];
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
