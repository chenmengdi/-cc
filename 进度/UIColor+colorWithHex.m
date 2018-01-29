//
//  UIColor+colorWithHex.m
//
//  Created by Grigory Avdyushin (me@avdyushin.ru) on 2/7/13.
//  Copyright (c) 2013 Grigory Avdyushin. All rights reserved.
//

#import "UIColor+colorWithHex.h"

@implementation UIColor (colorWithHex)

+ (UIColor *)colorWithHex:(int)hex
{
    
    return [self colorWithHex:hex withAlpha:1.0f];
    
}

+ (UIColor *)colorWithHex:(int)hex withAlpha:(CGFloat)alpha
{
    
    CGFloat r = ((hex & 0xFF0000) >> 16) / 255.0;
    CGFloat g = ((hex & 0x00FF00) >> 8 ) / 255.0;
    CGFloat b = ((hex & 0x0000FF)      ) / 255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:alpha];
    
}

+ (UIColor *)colorWithHexString:(NSString *)hexColorString
{
    if ([hexColorString length] < 6) { //长度不合法
        return [UIColor blackColor];
    }
    NSString *tempString = [hexColorString lowercaseString];
    if ([tempString hasPrefix:@"0x"]) { //检查开头是0x
        tempString = [tempString substringFromIndex:2];
    } else if ([tempString hasPrefix:@"#"]) { //检查开头是#
        tempString = [tempString substringFromIndex:1];
    }
    if ([tempString length] != 6) {
        return [UIColor blackColor];
    }
    //分解三种颜色的值
    NSRange range = NSMakeRange(0, 2);
    NSString *rString = [tempString substringWithRange:range];
    range.location = 2;
    NSString *gString = [tempString substringWithRange:range];
    range.location = 4;
    NSString *bString = [tempString substringWithRange:range];
    //取三种颜色值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f)
                           green:((float)g / 255.0f)
                            blue:((float)b / 255.0f)
                           alpha:1.0f];
}

+ (UIColor *)colorWithHexThreeString:(NSString *)hexColorString
{
    if ([hexColorString length] < 3) { //长度不合法
        return [UIColor blackColor];
    }
    NSString *tempString = [hexColorString lowercaseString];
    if ([tempString hasPrefix:@"0x"]) { //检查开头是0x
        tempString = [tempString substringFromIndex:2];
    } else if ([tempString hasPrefix:@"#"]) { //检查开头是#
        tempString = [tempString substringFromIndex:1];
    }
    if ([tempString length] != 3) {
        return [UIColor blackColor];
    }
    //分解三种颜色的值
    NSRange range = NSMakeRange(0, 1);
    NSString *rString = [tempString substringWithRange:range];
    range.location = 1;
    NSString *gString = [tempString substringWithRange:range];
    range.location = 2;
    NSString *bString = [tempString substringWithRange:range];
    //取三种颜色值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float)r / 15.0f)
                           green:((float)g / 15.0f)
                            blue:((float)b / 15.0f)
                           alpha:1.0f];
}

@end
