//
//  ViewController.m
//  进度
//
//  Created by 陈孟迪 on 2018/1/24.
//  Copyright © 2018年 陈孟迪. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
#import "UIViewExt.h"
@interface ViewController ()
{
    UILabel *label;
    MyView *v;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    v = [[MyView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.width)];
    [v progress:57];
    [self.view addSubview:v];
    
    
    label  = [[UILabel alloc]initWithFrame:CGRectMake((self.view.width-100)/2, v.bottom+10, 100, 50)];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((self.view.width-100)/2, label.bottom+10, 100, 50);
    button.backgroundColor = [UIColor grayColor];
    [button setTitle:@"点击" forState:(UIControlStateNormal)];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(action:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
}

- (void)action:(UIButton*)sender{
    
    float value = arc4random()%+100;
    label.text = [NSString stringWithFormat:@"%0.1f",value];
    [v progress:value];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
