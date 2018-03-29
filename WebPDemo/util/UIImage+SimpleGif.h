//
//  UIImage+SimpleGif.h
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/29.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage(SimpleGif)


/** 将一个gif图转换为一帧一帧的图片数组*/
+ (NSArray *)smp_imagesWithGif:(NSURL *)gifURL;


@end
