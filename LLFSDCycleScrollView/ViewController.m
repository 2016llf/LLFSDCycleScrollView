//
//  ViewController.m
//  LLFSDCycleScrollView
//
//  Created by 帮啦跑腿 on 2019/3/11.
//  Copyright © 2019 刘龙飞. All rights reserved.
//

#import "ViewController.h"

#import "LLFSDCycleScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 情景二：采用网络图片实现
    NSArray *imagesURLStrings = @[
                                  @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg",
                                  @"https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
                                  @"https://ss2.baidu.com/-vo3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a4b3d7085dee3d6d2293d48b252b5910/0e2442a7d933c89524cd5cd4d51373f0830200ea.jpg"
                                  ];
    
    LLFSDCycleScrollView * cycleScrollView = [[LLFSDCycleScrollView alloc]initWithFrame:CGRectMake(0, 50, self.view.frame.size.width, 140) imagesURLStrings:imagesURLStrings placeholderImage:@"placeholder"] ;
    [cycleScrollView setDidSelectItemAtIndex:^(NSUInteger index) {
        NSLog(@"%lu",(unsigned long)index);
    }];
    [self.view addSubview:cycleScrollView];
    
}


@end
