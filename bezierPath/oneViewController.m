//
//  oneViewController.m
//  bezierPath
//
//  Created by zxy on 15/12/7.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "oneViewController.h"

@interface oneViewController ()

@end

@implementation oneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"椭圆";
    self.view.backgroundColor = [UIColor blueColor];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 40, 200, 100)];
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.frame = CGRectMake(10, 30, 200, 10);
    shape.strokeColor = [UIColor redColor].CGColor;
    shape.fillColor = [UIColor yellowColor].CGColor;
    shape.lineWidth = 10;
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
