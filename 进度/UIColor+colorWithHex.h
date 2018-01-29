//
//  UIColor+colorWithHex.h
//
//  Created by Grigory Avdyushin (me@avdyushin.ru) on 2/7/13.
//  Copyright (c) 2013 Grigory Avdyushin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (colorWithHex)

+ (UIColor *)colorWithHex:(int)hex;
+ (UIColor *)colorWithHex:(int)hex withAlpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)hexColorString;
+ (UIColor *)colorWithHexThreeString:(NSString *)hexColorString;

@end
