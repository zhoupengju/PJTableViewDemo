//
//  PJTableViewCell.m
//  PJTableViewDemo
//
//  Created by 周鹏钜 on 16/10/24.
//  Copyright © 2016年 周鹏钜. All rights reserved.
//

#import "PJTableViewCell.h"

@interface PJTableViewCell ()

@property (nonatomic, weak) UIImageView *imageBg;

@end

@implementation PJTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.clipsToBounds = YES;
        
        UIImageView *imageBg = [[UIImageView alloc] initWithFrame:CGRectZero];
        self.imageBg = imageBg;
        [self.contentView addSubview:imageBg];
    }
    return self;
}

// 绘图
//-(void)drawLayer {
//
//    // 异步绘制
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//
//        // 整体绘制到一张图片上
//        CGRect rect = CGRectMake(0, 0, WIDTH, 100);
//        UIGraphicsBeginImageContextWithOptions(CGSizeMake(WIDTH, 130), YES, 0);
//
//        // 绘制上半部背景
//        CGContextRef context = UIGraphicsGetCurrentContext();
//        [[UIColor colorWithRed:250/255.0 green:250/255.0 blue:250/255.0 alpha:1] set];
//        CGContextFillRect(context, rect);
//
//        // 绘制下半部背景
//        [[UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1] set];
//        CGContextFillRect(context, CGRectMake(0, 100, WIDTH, 29.5));
//
//        NSString *name = @"我是周鹏钜";
//        [name drawInRect:CGRectMake(20, 20, 100, 20) withAttributes:@{NSForegroundColorAttributeName: [UIColor orangeColor]}];
//
//        [[UIImage imageNamed:@"trade_gaoxin_bg_6"] drawInRect:CGRectMake(20, 50, 50, 50) blendMode:kCGBlendModeNormal alpha:1];
//
//        [kGlobalPlaceholderLine set];
//        CGContextFillRect(context, CGRectMake(0, 129.5, WIDTH, 0.5));
//        // 设置背景图片, 所有的绘图都加在这个上面
//        UIImage *temp = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//        dispatch_async(dispatch_get_main_queue(), ^{
//
//            self.imageBg.frame = CGRectMake(0, 0, WIDTH, 130);
//            self.imageBg.image = nil;
//            self.imageBg.image = temp;
//        });
//    });
//}

-(void)setName:(NSString *)name {
    
    _name = name;
    
    
}

-(void)drawRect:(CGRect)rect {
    
    //    [super drawRect:rect];
    
    // 整体绘制到一张图片上
    //    CGRect rect = CGRectMake(0, 0, WIDTH, 100);
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(WIDTH, 130), YES, 0);
    
    // 绘制上半部背景
    CGContextRef context = UIGraphicsGetCurrentContext();
    [[UIColor colorWithRed:250/255.0 green:250/255.0 blue:250/255.0 alpha:1] set];
    CGContextFillRect(context, rect);
    
    // 绘制下半部背景
    [[UIColor colorWithRed:243/255.0 green:243/255.0 blue:243/255.0 alpha:1] set];
    CGContextFillRect(context, CGRectMake(0, 100, WIDTH, 29.5));
    
    NSString *name = _name; 
    [name drawInRect:CGRectMake(20, 20, 100, 20) withAttributes:@{NSForegroundColorAttributeName: [UIColor orangeColor]}];
    
    [[UIImage imageNamed:@"trade_gaoxin_bg_6"] drawInRect:CGRectMake(20, 50, 50, 50) blendMode:kCGBlendModeNormal alpha:1];
    
    [kGlobalPlaceholderLine set];
    CGContextFillRect(context, CGRectMake(0, 129.5, WIDTH, 0.5));
    // 设置背景图片, 所有的绘图都加在这个上面
    UIImage *temp = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    dispatch_async(dispatch_get_main_queue(), ^{
        
        self.imageBg.frame = CGRectMake(0, 0, WIDTH, 130);
        self.imageBg.image = nil;
        self.imageBg.image = temp;
    });
    
}

@end
