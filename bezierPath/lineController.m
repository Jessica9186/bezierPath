//
//  lineController.m
//  bezierPath
//
//  Created by zxy on 15/12/7.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "lineController.h"

@interface lineController ()

@end

@implementation lineController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"显示直线";
    self.view.backgroundColor = [UIColor redColor];
    
    // 绘制贝塞尔直线
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addLineToPoint:CGPointMake(100, 150)];
    
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = CGRectMake(100, 100, 100, 100);
    shape.path = path.CGPath;
    shape.borderWidth = 5;
    shape.borderColor = [UIColor blueColor].CGColor;
//    shape.masksToBounds = YES;
    shape.strokeColor = [UIColor yellowColor].CGColor;  // 用来控制线条显示的颜色
    shape.lineWidth = 20; // 用来控制线条的宽度
    [self.view.layer addSublayer:shape];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
