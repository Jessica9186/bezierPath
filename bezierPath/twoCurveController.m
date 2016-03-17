//
//  twoCurveController.m
//  bezierPath
//
//  Created by zxy on 15/12/7.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "twoCurveController.h"

@interface twoCurveController ()

@end

@implementation twoCurveController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"贝塞尔曲线_圆";
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(100, 100, 100, 100)];
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.strokeColor  = [UIColor blueColor].CGColor;
    shape.fillColor = [UIColor greenColor].CGColor;
    shape.path = path.CGPath;
    
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
