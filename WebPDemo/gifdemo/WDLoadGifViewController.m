//
//  WDLoadGifViewController.m
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/27.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "WDLoadGifViewController.h"
#import "UIImage+animatedGIF.h"
#import <UIImageView+WebCache.h>
#import <UIImage+GIF.h>
#import "UIImage+SimpleGif.h"
#import "WDGifCollectionViewCell.h"

@interface WDLoadGifViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

/**
 头图
 */
@property (weak, nonatomic) IBOutlet UIImageView *titleImageView;

/**
 每一帧
 */
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic, strong) NSArray *gifFrames;

@end

@implementation WDLoadGifViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //方式一
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"1" withExtension:@"gif"];
    UIImage *image = [UIImage animatedImageWithAnimatedGIFURL:url];
    
    //方式二
//    NSData *imageData = [NSData dataWithContentsOfURL:url];
//    UIImage *image = [UIImage sd_animatedGIFWithData:imageData];
    self.titleImageView.image = image;
    
    
    UINib *nib = [UINib nibWithNibName:@"WDGifCollectionViewCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:@"WDGifCollectionViewCell"];
    
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;

}

- (IBAction)buttonClicked:(id)sender {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"1" withExtension:@"gif"];
    self.gifFrames = [UIImage smp_imagesWithGif:url];
    [self.collectionView reloadData];
}




- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.gifFrames.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    WDGifCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"WDGifCollectionViewCell" forIndexPath:indexPath];
    cell.frameImage = self.gifFrames[indexPath.row];
    return cell;
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
