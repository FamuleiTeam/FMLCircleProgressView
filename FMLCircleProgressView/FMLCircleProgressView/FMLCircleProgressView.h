//
//  FMLCircleProgressView.h
//  FMLCircleProgressView
//
//  Created by Damien on 16/3/31.
//  Copyright © 2016年 Damien. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface FMLCircleProgressView : UIView


/// default is black
@property (nonatomic, strong) IBInspectable UIColor *strokeColor;

/// default is 3
@property (nonatomic, assign) IBInspectable CGFloat lineWidth;

/// 0 - 1
@property (nonatomic, assign) IBInspectable CGFloat progress;

/// default is clearColor
@property (nonatomic, strong) IBInspectable UIColor *backgroundStrokeColor;


- (instancetype)initWithFrame:(CGRect)frame;

@end
