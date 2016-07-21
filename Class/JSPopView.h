//
//  JSPopView.h
//  JSPopView
//
//  Created by apple on 16/7/21.
//  Copyright © 2016年 Cary. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@protocol JSPopViewDelegate <NSObject>

@required
- (void)didSelectedAtIndexPath:(NSIndexPath *)indexPath;

@end


typedef NS_ENUM(NSInteger, JSPopViewDirection) {
    JSPopViewDirectionLeft = 0,//箭头在左面
    JSPopViewDirectionRight//箭头在右面
};

@interface JSPopView : UIView

@property (nonatomic, assign) id<JSPopViewDelegate> delegate;

/**
 *
 *
 *  @param dataArray 数据源
 *  @param origin    原点坐标
 *  @param width     tableView的宽
 *  @param height    tableView高度
 *  @param direction 箭头方向
 *
 *  @return
 */
- (instancetype)initWithDataArray:(NSArray *)dataArray
                           origin:(CGPoint)origin
                            width:(CGFloat)width
                           height:(CGFloat)height
                        direction:(JSPopViewDirection)direction;

/**
 *  pop in window
 */
- (void)pop;
/**
 *  pop in view
 *
 *  @param view view
 */
- (void)popInView:(UIView *)view;
/**
 *  隐藏
 */
- (void)dismiss;

@end

@interface JSPopModel : NSObject

@property (nonatomic,copy)NSString *title;
@property (nonatomic,copy)NSString *imageName;

- (instancetype)initWithTitle:(NSString *)title
                    imageName:(UIImage *)imageName;

@end
