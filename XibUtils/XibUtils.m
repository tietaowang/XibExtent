//
//  CommonServer.m
//  darongtong
//
//  Created by xie on 17/9/1.
//  Copyright © 2017年 darongtong. All rights reserved.
//

#import "XibUtils.h"

@implementation XibUtils


+ (id) getViewByXib:(NSString*) name{
    NSArray*  array = [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
    return array[0];
}

+ (UINib*) getNameByXib:(NSString*) name{
    return   [UINib  nibWithNibName:name bundle:nil];
}




+ (UIView*) getViewByXib:(NSString*) name className:(Class) class{
    NSArray*  array = [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
    for(UIView* v in array){
        if([v isMemberOfClass:class]){
             return v;
        }
    }
    return nil;
}


// 字典转json字符串方法

+(NSString *)convertToJsonData:(NSDictionary *)dict

{
    
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    
    NSString *jsonString;
    
    if (!jsonData) {
        
        NSLog(@"%@",error);
        
    }else{
        
        jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
        
    }
    
    NSMutableString *mutStr = [NSMutableString stringWithString:jsonString];
    
    NSRange range = {0,jsonString.length};
    
    //去掉字符串中的空格
    
    [mutStr replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:range];
    
    NSRange range2 = {0,mutStr.length};
    
    //去掉字符串中的换行符
    
    [mutStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
    
    return mutStr;
    
}

+ (void)adjustButtonHorizontal:(UIButton *)button edge:(CGFloat)edge
{
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        CGSize size = [button.titleLabel.text sizeForFont:button.titleLabel.font size:CGSizeMake(MAXFLOAT, button.frame.size.height) mode:NSLineBreakByCharWrapping];
        CGFloat labelLeft = (button.frame.size.width - size.width - edge - button.imageView.frame.size.width) / 2;
        button.titleEdgeInsets = UIEdgeInsetsMake(0, labelLeft - button.imageView.frame.size.width, 0, - (labelLeft - button.imageView.frame.size.width));
        button.imageEdgeInsets = UIEdgeInsetsMake(0, labelLeft + size.width + edge, 0, -(labelLeft + size.width + edge));
}


@end
