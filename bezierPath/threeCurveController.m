//
//  threeCurveController.m
//  bezierPath
//
//  Created by zxy on 15/12/7.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "threeCurveController.h"

@interface threeCurveController ()

@end

@implementation threeCurveController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"圆角矩形";
    self.view.backgroundColor = [UIColor brownColor];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(50, 50, 200, 50) cornerRadius:10];
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = CGRectMake(0, 100, 300, 200);
    shape.borderColor = [UIColor blueColor].CGColor;
    shape.borderWidth = 5;
    shape.strokeColor = [UIColor greenColor].CGColor;
    shape.fillColor = [UIColor redColor].CGColor;
    shape.lineWidth = 5;
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
