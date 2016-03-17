//
//  ViewController.m
//  bezierPath
//
//  Created by zxy on 15/12/7.
//  Copyright © 2015年 ZCST. All rights reserved.
//

#import "ViewController.h"
#import "lineController.h"
#import "oneViewController.h"
#import "twoCurveController.h"
#import "threeCurveController.h"
#import "fourViewController.h"
#import "startAndEndViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor cyanColor];
    self.title = @"贝塞尔曲线";
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        static NSString *ID = @"cell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
            if (indexPath.section == 0) {
                if (indexPath.row == 0) {
                    cell.textLabel.text = @"直线";
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                }
                else if (indexPath.row == 1){
                    cell.textLabel.text = @"椭圆";
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

                }
                else if (indexPath.row == 2){
                    cell.textLabel.text = @"圆";
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    
                }
                else if (indexPath.row == 3){
                    cell.textLabel.text = @"圆角矩形";
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    
                }
                else if (indexPath.row == 4){
                    cell.textLabel.text = @"曲线_1个控制点";
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    
                }
                else if (indexPath.row == 5){
                    cell.textLabel.text = @"确定了开始和结束以及旋转方向并且确定了中心点";
                    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
                    
                }
            }
        }
    [self hideExtraCellLine:tableView];
        return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            lineController *line = [[lineController alloc] init];
            [self.navigationController pushViewController:line animated:YES];
        }
        else if (indexPath.row == 1){
            oneViewController *one = [[oneViewController alloc] init];
            [self.navigationController pushViewController:one animated:YES];
        }
        else if (indexPath.row == 2){
            twoCurveController *two = [[twoCurveController alloc] init];
            [self.navigationController pushViewController:two animated:YES];
        }
        else if (indexPath.row == 3){
            threeCurveController *three = [[threeCurveController alloc] init];
            [self.navigationController pushViewController:three animated:YES];
        }
        else if (indexPath.row == 4){
            fourViewController *four = [[fourViewController alloc] init];
            [self.navigationController pushViewController:four animated:YES];
        }
        else if (indexPath.row == 5){
            startAndEndViewController *start = [[startAndEndViewController alloc] init];
            [self.navigationController pushViewController:start animated:YES];
        }
    }
}

#pragma mark - 不显示多余的cell的分割线——这个方法需要在tableview创建完毕之后才能调用
- (void)hideExtraCellLine:(UITableView *)tableView
{
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
    
}

@end
