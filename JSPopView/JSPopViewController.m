//
//  JSPopViewController.m
//  JSPopView
//
//  Created by 冯伟 on 16/8/31.
//  Copyright © 2016年 Cary. All rights reserved.
//

#import "JSPopViewController.h"
#import "JSPopView.h"

#define js_width [[UIScreen mainScreen] bounds].size.width
#define js_height [[UIScreen mainScreen] bounds].size.height

@interface JSPopViewController ()
@property(nonatomic, strong)NSMutableArray * dataArray;
@end

@implementation JSPopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = [NSMutableArray arrayWithObjects:@"🍊橘子",@"🍎苹果",@"🍌香蕉",@"🍉西瓜",@"🍈甜瓜",@"🍅西红柿",@"🍊橘子",@"🍎苹果",@"🍌香蕉",@"🍉西瓜",@"🍈甜瓜",@"🍅西红柿", nil];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, js_width, js_height-64) style:UITableViewStylePlain];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.dataArray[indexPath.row];
    cell.backgroundColor = [UIColor grayColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell * cell = [self.tableView cellForRowAtIndexPath:indexPath];
    CGRect rect = [cell.superview convertRect:cell.frame toView:[UIApplication sharedApplication].keyWindow];
    CGFloat x = rect.size.width - 180;
    CGFloat y = rect.origin.y;
    if (y<64) {
        y=64;
    }
    y+=10;
    JSPopModel * model1 = [[JSPopModel alloc] initWithTitle:@"🍊橘子" imageName:nil];
    JSPopModel * model2 = [[JSPopModel alloc] initWithTitle:@"🍎苹果" imageName:nil];
    JSPopModel * model3 = [[JSPopModel alloc] initWithTitle:@"🍌香蕉" imageName:nil];
    JSPopModel * model4 = [[JSPopModel alloc] initWithTitle:@"🍉西瓜" imageName:nil];
    JSPopModel * model5 = [[JSPopModel alloc] initWithTitle:@"🍈甜瓜" imageName:nil];
    JSPopModel * model6 = [[JSPopModel alloc] initWithTitle:@"🍅西红柿" imageName:nil];
    NSArray * dataArray = @[model1,model2,model3,model4,model5,model6];
    JSPopView * popView = [[JSPopView alloc] initWithDataArray:dataArray origin:CGPointMake(x, y) width:150 height:40 direction:JSPopViewDirectionLeft];
    [popView pop];
}


@end
