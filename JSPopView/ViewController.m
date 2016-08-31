//
//  ViewController.m
//  JSPopView
//
//  Created by apple on 16/7/21.
//  Copyright © 2016年 Cary. All rights reserved.
//

#import "ViewController.h"
#import "JSPopView.h"
#import "JSPopViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)left:(id)sender {
    JSPopModel * model1 = [[JSPopModel alloc] initWithTitle:@"🍊橘子" imageName:nil];
    JSPopModel * model2 = [[JSPopModel alloc] initWithTitle:@"🍎苹果" imageName:nil];
    JSPopModel * model3 = [[JSPopModel alloc] initWithTitle:@"🍌香蕉" imageName:nil];
    JSPopModel * model4 = [[JSPopModel alloc] initWithTitle:@"🍉西瓜" imageName:nil];
    NSArray * dataArray = @[model1,model2,model3,model4];
    JSPopView * popView = [[JSPopView alloc] initWithDataArray:dataArray origin:CGPointMake(20, 64) width:100 height:40 direction:JSPopViewDirectionLeft];
    [popView pop];
}
- (IBAction)right:(id)sender {
    JSPopModel * model1 = [[JSPopModel alloc] initWithTitle:@"🍊橘子" imageName:nil];
    JSPopModel * model2 = [[JSPopModel alloc] initWithTitle:@"🍎苹果" imageName:nil];
    JSPopModel * model3 = [[JSPopModel alloc] initWithTitle:@"🍌香蕉" imageName:nil];
    JSPopModel * model4 = [[JSPopModel alloc] initWithTitle:@"🍉西瓜" imageName:nil];
    NSArray * dataArray = @[model1,model2,model3,model4];
    JSPopView * popView = [[JSPopView alloc] initWithDataArray:dataArray origin:CGPointMake(self.view.frame.size.width - 20, 64) width:100 height:40 direction:JSPopViewDirectionRight];
    [popView pop];
}
- (IBAction)clicked:(id)sender {
    JSPopViewController *vc = [[JSPopViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
