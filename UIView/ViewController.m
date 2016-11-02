//
//  ViewController.m
//  UIView
//
//  Created by WeiChaoW on 16/9/20.
//  Copyright © 2016年 WeiChaoW. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //创建UIView
    UIView *view1 = [[UIView alloc] init];
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(20, 120, 100, 100)];
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(40, 140, 100, 100)];
    //设置view的尺寸
    view1.frame = CGRectMake(0, 100, 100, 100);
    
    //设置view的背景色
    view1.backgroundColor = [UIColor redColor];
    view2.backgroundColor = [UIColor greenColor];
    view3.backgroundColor = [UIColor blueColor];
    
    //设置view的中心位置,不改变view的大小
    //    view1.center = CGPointMake(80, 200);
    
    //改变view的宽和高，视图原来的中心位置不变
    //    view1.bounds = CGRectMake(0, 0, 40, 40);
    
    //设置view的tag值
    view1.tag = 1;
    view2.tag = 2;
    view3.tag = 3;
    
    //依次添加三个视图(从上到下是：蓝，绿，红)
    [self.view addSubview:view1];
    [self.view addSubview:view2];
    [self.view addSubview:view3];
    
    //把view1（红）移到最上面
    [self.view bringSubviewToFront:view1];
    
    //把view3（蓝）移到最下面
    [self.view sendSubviewToBack:view1];
    
    //还有很多用来交换两个视图的方法，这里不再一一列举
    /*
     //交换两个视图的位置
     //    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:2];
     //把一个视图插在某个位置
     - (void)insertSubview:(UIView *)view atIndex:(NSInteger)index;
     //把一个视图插在另一个视图的下面
     - (void)insertSubview:(UIView *)view belowSubview:(UIView *)siblingSubview;
     //把一个视图插在另一个视图的上面
     - (void)insertSubview:(UIView *)view aboveSubview:(UIView *)siblingSubview;
     //已经添加了某个视图
     - (void)didAddSubview:(UIView *)subview;
     //将要移除某个视图
     - (void)willRemoveSubview:(UIView *)subview;
     //把一个视图从一个父视图上移到另一个父视图上
     - (void)willMoveToSuperview:(nullable UIView *)newSuperview;
     //已经移动到了父视图上
     - (void)didMoveToSuperview;
     //把一个视图移动到一个窗口上
     - (void)willMoveToWindow:(nullable UIWindow *)newWindow;
     //已经移动到了一个窗口上
     - (void)didMoveToWindow;
     
     */
    //subViews中存放的(红，绿，蓝三个视图)
    NSArray *subViews = self.view.subviews;
    
    //如何找到一个视图,其实此时view4就是view1,view5也是view1
    UIView *view4 = [subViews objectAtIndex:0];
    view4.backgroundColor = [UIColor blackColor];
    UIView *view5 = (UIView *)[self.view viewWithTag:1];
    view5.backgroundColor = [UIColor purpleColor];
    
    //隐藏view1
    view1.hidden = YES;
    
    //删除View2
    [view2 removeFromSuperview];
    
    //再添加一个视图
    UIView *lastView = [[UIView alloc] initWithFrame:CGRectMake(0, 200, 200, 200)];
    lastView.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];
    [self.view addSubview:lastView];
    
    //设置view的透明度
    lastView.alpha = 0.5;
    
    //设置lastView的圆角角度
    lastView.layer.cornerRadius = 10;
    //设置边框的的宽度
    lastView.layer.borderWidth = 2;
    //设置边框的颜色
    lastView.layer.borderColor = [UIColor redColor].CGColor;
    //允许剪切
    lastView.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
