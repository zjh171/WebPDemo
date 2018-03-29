//
//  UIImage+SimpleGif.m
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/29.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "UIImage+SimpleGif.h"

@implementation UIImage(SimpleGif)

+ (NSArray *)smp_imagesWithGif:(NSURL *)gifURL {
    NSURL *fileUrl =  gifURL;
    CGImageSourceRef gifSource = CGImageSourceCreateWithURL((CFURLRef)fileUrl, NULL);
    size_t gifCount = CGImageSourceGetCount(gifSource);
    NSMutableArray *frames = [[NSMutableArray alloc]init];
    for (size_t i = 0; i< gifCount; i++) {
        CGImageRef imageRef = CGImageSourceCreateImageAtIndex(gifSource, i, NULL);
        UIImage *image = [UIImage imageWithCGImage:imageRef];
        [frames addObject:image];
        CGImageRelease(imageRef);
    }
    return frames;
}


@end
