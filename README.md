# JSPopView
  类似微信的pop视图

# screenshoot
  ![left](/screenshoot/left.png?raw=true) ![right](/screenshoot/right.png?raw=true) ![tableview](/screenshoot/tableview.png?raw=true)
  
  
# Used
    JSPopModel * model1 = [[JSPopModel alloc] initWithTitle:@"🍊橘子" imageName:nil];
    JSPopModel * model2 = [[JSPopModel alloc] initWithTitle:@"🍎苹果" imageName:nil];
    JSPopModel * model3 = [[JSPopModel alloc] initWithTitle:@"🍌香蕉" imageName:nil];
    JSPopModel * model4 = [[JSPopModel alloc] initWithTitle:@"🍉西瓜" imageName:nil];
    NSArray * dataArray = @[model1,model2,model3,model4];
    JSPopView * popView = [[JSPopView alloc] initWithDataArray:dataArray origin:CGPointMake(20, 64) width:100 height:40 direction:JSPopViewDirectionLeft];
    [popView pop];
