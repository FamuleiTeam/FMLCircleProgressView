//
//  FMLCircleProgressView.m
//  FMLCircleProgressView
//
//  Created by Damien on 16/3/31.
//  Copyright © 2016年 Damien. All rights reserved.
//

#import "FMLCircleProgressView.h"


@interface FMLCircleProgressView ()

@property (nonatomic, strong) CAShapeLayer *circleLayer;

@property (nonatomic, strong) UIBezierPath *circlePath;

@property (nonatomic, strong) CAShapeLayer *backgroundLayer;

@end
@implementation FMLCircleProgressView


#pragma mark - initialize

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (void)initialize
{
    self.circleLayer.path = self.circlePath.CGPath;
    self.circleLayer.frame = self.bounds;
    [self.layer addSublayer:self.circleLayer];
    self.circleLayer.lineWidth = 3;
    self.circleLayer.fillColor = [UIColor clearColor].CGColor;
    self.circleLayer.strokeColor = [UIColor blackColor].CGColor;
    self.circleLayer.transform = CATransform3DMakeRotation(- (M_PI / 2), 0, 0, 1);
    self.backgroundLayer.path = self.circlePath.CGPath;
    self.backgroundLayer.frame = self.bounds;
    [self.layer insertSublayer:self.backgroundLayer below:self.circleLayer];
    self.backgroundLayer.lineWidth = 3;
    self.backgroundLayer.fillColor = [UIColor clearColor].CGColor;
    self.backgroundLayer.strokeColor = [UIColor clearColor].CGColor;
    _circleLayer.strokeEnd = 0;
    
}


#pragma mark - private
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.circlePath = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
    self.circleLayer.path = self.circlePath.CGPath;
    self.circleLayer.frame = self.bounds;
    self.backgroundLayer.frame = self.bounds;
    self.backgroundLayer.path = self.circlePath.CGPath;
}


#pragma mark - setter
- (void)setLineWidth:(CGFloat)lineWidth
{
    _lineWidth = lineWidth;
    _circleLayer.lineWidth = lineWidth;
    _backgroundLayer.lineWidth = lineWidth;
}

- (void)setStrokeColor:(UIColor *)strokeColor
{
    _strokeColor = strokeColor;
    _circleLayer.strokeColor = strokeColor.CGColor;
}

- (void)setBackgroundStrokeColor:(UIColor *)backgroundStrokeColor
{
    _backgroundStrokeColor = backgroundStrokeColor;
    _backgroundLayer.strokeColor = backgroundStrokeColor.CGColor;
}

- (void)setProgress:(CGFloat)progress
{
    self.circleLayer.strokeEnd = progress;
}


#pragma mark - getter
- (CAShapeLayer *)circleLayer
{
    if (!_circleLayer) {
        _circleLayer = [CAShapeLayer layer];
    }
    return _circleLayer;
}

- (UIBezierPath *)circlePath
{
    if (!_circlePath) {
        _circlePath = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
    }
    return _circlePath;

}

- (CAShapeLayer *)backgroundLayer
{
    if (!_backgroundLayer) {
        _backgroundLayer = [CAShapeLayer layer];
    }
    return _backgroundLayer;
}

@end
