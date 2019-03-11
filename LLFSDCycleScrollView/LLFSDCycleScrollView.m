//
//  LLFSDCycleScrollView.m
//  LLFSDCycleScrollView
//
//  Created by 帮啦跑腿 on 2019/3/11.
//  Copyright © 2019 刘龙飞. All rights reserved.
//

#import "LLFSDCycleScrollView.h"

#import <SDCycleScrollView.h>

@interface LLFSDCycleScrollView ()<SDCycleScrollViewDelegate>

@end

@implementation LLFSDCycleScrollView

-(instancetype)initWithFrame:(CGRect)frame imagesURLStrings:(NSArray*)imagesURLStrings placeholderImage:(NSString*)placeholder{
    self = [super initWithFrame:frame];
    if (self) {
        SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height) delegate:self placeholderImage:[UIImage imageNamed:placeholder]];
        cycleScrollView.imageURLStringsGroup = imagesURLStrings;
        cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentCenter;
        cycleScrollView.currentPageDotColor = [UIColor whiteColor]; // 自定义分页控件小圆标颜色
        cycleScrollView.autoScrollTimeInterval = 4.0;//轮播时间间隔
        [self addSubview:cycleScrollView];
    }
    return self;
}

#pragma mark - SDCycleScrollViewDelegate

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
//    NSLog(@"---点击了第%ld张图片", (long)index);
    !_didSelectItemAtIndex ? : _didSelectItemAtIndex(index);
}

//- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index
//{
//    NSLog(@">>>>>> 滚动到第%ld张图", (long)index);
//}


@end
