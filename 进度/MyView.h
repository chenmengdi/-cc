//
//  MyView.h
//  进度
//
//  Created by 陈孟迪 on 2018/1/24.
//  Copyright © 2018年 陈孟迪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyView : UIView

//进度颜色
@property (nonatomic,strong)UIColor* progressColor;

- (void)progress:(CGFloat)value;

@end
