//
//  LLFSDCycleScrollView.h
//  LLFSDCycleScrollView
//
//  Created by 帮啦跑腿 on 2019/3/11.
//  Copyright © 2019 刘龙飞. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LLFSDCycleScrollView : UIView

///frame,URL数组,placeholder
-(instancetype)initWithFrame:(CGRect)frame imagesURLStrings:(NSArray*)imagesURLStrings placeholderImage:(NSString*)placeholder;

///点击了第几张图片
@property (nonatomic , copy) void (^didSelectItemAtIndex) (NSUInteger index);

@end

NS_ASSUME_NONNULL_END
