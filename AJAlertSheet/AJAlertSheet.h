//
//  AJAlertSheet.h
//  AJAlertSheet
//
//  Created by zhundao on 2017/6/28.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^backBlock) (NSInteger index);
@interface AJAlertSheet : UIView

/*! 弹出动画 */
- (void)fadeIn;


/*! 初始化创建 */
/*!
 *  frame        尺寸
 *  dataArray    数据源
 *  title        是否有警告标题，没有则不显示titleLabel
 *  isDelete     是否有删除按钮，即是否要最底下一个为红色
 *  selectBlock  点击按钮的回调
 */
- (instancetype)initWithFrame:(CGRect)frame
                       array :(NSArray *)dataArray
                       title :(NSString *)title
                    isDelete :(BOOL)isDelete
                 selectBlock :(backBlock)selectBlock;


/*! 回调 */
@property(nonatomic,copy)backBlock backBlock;
/*! 顶部titleLabel的颜色设置，默认有一个颜色 */
@property(nonatomic,strong)UIColor *titleLabelColor;


@end
