//
//  PJTableViewCell.m
//  PJTableViewDemo
//
//  Created by 周鹏钜 on 16/10/24.
//  Copyright © 2016年 周鹏钜. All rights reserved.
//

#import "PJTableViewCell.h"

@implementation PJTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    
        self.textLabel.text = @"dddddddddddddd";
    }
    return self;
}

@end
