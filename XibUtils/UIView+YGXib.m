//
//  UIView+YGXib.m
//
//  Created by mac on 2018/4/26.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "UIView+YGXib.h"

@implementation UIView (YGXib)

- (void)setBorderWidth:(CGFloat)borderWidth
{
        
        if (borderWidth < 0) {
                return;
        }
        self.layer.borderWidth = borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor
{
        self.layer.borderColor = borderColor.CGColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
        self.layer.cornerRadius = cornerRadius;
        self.layer.masksToBounds = YES;
}

@end
