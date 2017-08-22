//
//  ViewController.m
//  AJAlertSheet
//
//  Created by zhundao on 2017/6/28.
//  Copyright © 2017年 zhundao. All rights reserved.
//

#import "ViewController.h"
#import "AJAlertSheet.h"
@interface ViewController ()
//208 203 192

//156
@end

@implementation ViewController

//https://github.com/maajian/AJAlertSheet

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    [self createButton];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)createButton
{
    UIButton *button  = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundColor:[UIColor greenColor]];
    [button setTitle:@"picker" forState:UIControlStateNormal];
    button.frame  = CGRectMake(200, 200, 100, 100);
    [button addTarget:self action:@selector(showPicker) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void) showPicker
{
    NSArray *array = @[@"老师",@"领导",@"程序员",@"学生",@"校长",@"家长",@"删除"];
    AJAlertSheet *sheet = [[AJAlertSheet alloc]initWithFrame:[UIScreen mainScreen].bounds
                                                       array:array   //数组
                                                       title:@"删除后将导致该用户二维码失效，如果有签到记录也将被删除，是否继续?"     //sheet标题
                                                   isDelete : YES    //最后一项是否为红色
                                                 selectBlock:^(NSInteger index) {  //点击回调
        NSLog(@"选择了%@",array[index]);
    }];
    [self.view addSubview:sheet];
//    sheet.titleLabelColor = [UIColor redColor];
    [sheet fadeIn];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
