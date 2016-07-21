//
//  ViewController.m
//  JSPopView
//
//  Created by apple on 16/7/21.
//  Copyright © 2016年 Cary. All rights reserved.
//

#import "ViewController.h"
#import "JSPopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clicked:(id)sender {
    JSPopModel * model1 = [[JSPopModel alloc] initWithTitle:@"首页" imageName:nil];
    JSPopModel * model2 = [[JSPopModel alloc] initWithTitle:@"第二页" imageName:nil];
    JSPopModel * model3 = [[JSPopModel alloc] initWithTitle:@"第三页" imageName:nil];
    JSPopModel * model4 = [[JSPopModel alloc] initWithTitle:@"第四页" imageName:nil];
    NSArray * dataArray = @[model1,model2,model3,model4];
    JSPopView * popView = [[JSPopView alloc] initWithDataArray:dataArray origin:CGPointMake(100, 200) width:100 height:40 direction:JSPopViewDirectionLeft];
    [popView popInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
