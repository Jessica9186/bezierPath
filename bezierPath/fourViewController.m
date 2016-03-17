//
//  fourViewController.m
//  bezierPath
//
//  Created by zxy on 15/12/7.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "fourViewController.h"

@interface fourViewController ()

@end

@implementation fourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    self.title = @"1个控制点的情况";
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addQuadCurveToPoint:CGPointMake(300, 0) controlPoint:CGPointMake(110, 200)];
    
    UIView *view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(0, 200, 300, 1);
    view1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view1];
     // 由上面添加的那条绿色的线条来说，控制点的参照坐标系是从设备左上角的位置为（0，0）点的
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = CGRectMake(30, 100, 300, 200);
    shape.borderWidth = 2;
    shape.borderColor = [UIColor yellowColor].CGColor;
    shape.path = path.CGPath;
    shape.strokeColor = [UIColor blueColor].CGColor;
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
