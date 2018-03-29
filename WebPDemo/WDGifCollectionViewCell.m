//
//  WDGifCollectionViewCell.m
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/29.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "WDGifCollectionViewCell.h"

@interface WDGifCollectionViewCell()


@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end


@implementation WDGifCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setFrameImage:(UIImage *)frameImage{
    self.imageView.image = frameImage;
}



@end
