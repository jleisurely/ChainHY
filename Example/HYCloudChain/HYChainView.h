//
//  HYChainView.h
//  HYCloudChain_Example
//
//  Created by 王玉 on 2019/4/29.
//  Copyright © 2019 wangyu1001@live.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^viewBlock)(void);

@interface HYChainView : UIView
@property(nonatomic,weak)viewBlock block;
@property(nonatomic,strong) NSMutableArray *array1;
@property(nonatomic,strong) NSMutableArray *array2;
@end

NS_ASSUME_NONNULL_END
