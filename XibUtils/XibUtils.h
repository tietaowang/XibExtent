//
//  CommonServer.h
//  darongtong
//
//  Created by xie on 17/9/1.
//  Copyright © 2017年 darongtong. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface XibUtils : NSObject
+ (id) getViewByXib:(NSString*) name;
+ (UINib*) getNameByXib:(NSString*) name;
+ (UIView*) getViewByXib:(NSString*) name className:(Class) class;



+(NSString *)convertToJsonData:(NSDictionary *)dict;
+ (void)adjustButtonHorizontal:(UIButton *)button edge:(CGFloat)edge;
@end
