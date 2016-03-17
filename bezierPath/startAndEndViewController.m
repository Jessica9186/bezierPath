//
//  startAndEndViewController.m
//  bezierPath
//
//  Created by zxy on 15/12/7.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "startAndEndViewController.h"

@interface startAndEndViewController ()
@property (strong, nonatomic) CAShapeLayer *shapeRed;
@end

@implementation startAndEndViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"确定开始和结束角度以及中心点位置";
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:100 startAngle:0.875 endAngle:0.625 clockwise:YES];
    
    CAShapeLayer *shape = [CAShapeLayer layer];
//    self.shape = shape;
    shape.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height / 2 - 100, 200, 200);
    shape.position = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
    shape.borderColor = [UIColor redColor].CGColor;
//    shape.borderWidth = 2;
    shape.strokeStart = 0.27;
//    shape.strokeEnd = 0.27 + 0.73 * 0.05  ;
//    [self performSelector:@selector(shapeChange) withObject:nil afterDelay:1];
    
    shape.path = path.CGPath;
    shape.strokeColor = [UIColor colorWithRed:0.99 green:0.8 blue:0.55 alpha:0.5].CGColor;
//    [UIColor yellowColor].CGColor;
    
    shape.fillColor = [UIColor clearColor].CGColor;
    shape.lineWidth = 30;
    
    
    // 第二个圆环
    UIBezierPath *pathWhite = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:105 startAngle:0.875 endAngle:0.625 clockwise:YES];
    
    
    CAShapeLayer *shapeWhite = [CAShapeLayer layer];
    shapeWhite.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height / 2 - 120, 200, 200);
    shapeWhite.position = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
    shapeWhite.borderColor = [UIColor brownColor].CGColor;
    //    shape.borderWidth = 2;
    shapeWhite.strokeStart = 0.27;
//        shapeWhite.strokeEnd = 0.27 + 0.73 * 0.5  ;
    //    [self performSelector:@selector(shapeChange) withObject:nil afterDelay:1];
    
    shapeWhite.path = pathWhite.CGPath;
    shapeWhite.strokeColor = [UIColor whiteColor].CGColor;
    //    [UIColor yellowColor].CGColor;
    
    shapeWhite.fillColor = [UIColor clearColor].CGColor;
    shapeWhite.lineWidth = 5;
    
    
    // 第三个圆环——红色的
    CAShapeLayer *shapeRed = [CAShapeLayer layer];
    self.shapeRed = shapeRed;
    shapeRed.frame = CGRectMake(0, [UIScreen mainScreen].bounds.size.height / 2 - 100, 200, 200);
    shapeRed.position = CGPointMake([UIScreen mainScreen].bounds.size.width / 2, [UIScreen mainScreen].bounds.size.height / 2);
    shapeRed.borderColor = [UIColor colorWithRed:150 / 255 green:120 / 255 blue:30 / 255 alpha:0.5].CGColor;
    //    shape.borderWidth = 2;
    shapeRed.strokeStart = 0.27;
            shapeRed.strokeEnd = 0.27   ;
        [self performSelector:@selector(shapeChange) withObject:nil afterDelay:0.5];
    
    shapeRed.path = path.CGPath;
    shapeRed.strokeColor = [UIColor redColor].CGColor;
    //    [UIColor yellowColor].CGColor;
    
    shapeRed.fillColor = [UIColor clearColor].CGColor;
    shapeRed.lineWidth = 30;
//    shapeRed.lineDashPhase = 0;
    
    [self.view.layer addSublayer:shape];
        [self.view.layer addSublayer:shapeRed];
    [self.view.layer addSublayer:shapeWhite];

    
}

- (void)shapeChange {
       // Dispose of any resources that can be recreated.
    [UIView animateWithDuration:3.0 delay:1.1 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        self.shapeRed.strokeEnd = 0.27 + 0.73 * 0.8;

    } completion:nil];
    
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
