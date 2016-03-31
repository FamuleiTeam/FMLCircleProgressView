//
//  ViewController.m
//  FMLCircleProgressView
//
//  Created by Damien on 16/3/31.
//  Copyright © 2016年 Damien. All rights reserved.
//

#import "ViewController.h"
#import "FMLCircleProgressView.h"

@interface ViewController ()

@property (nonatomic, strong) FMLCircleProgressView *progressView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    _progressView = [[FMLCircleProgressView alloc]init];
//    [self.view addSubview:_progressView];
//    _progressView.backgroundStrokeColor = [UIColor blueColor];
//    _progressView.strokeColor = [UIColor yellowColor];
//    _progressView.lineWidth = 10;
//    _progressView.frame = CGRectMake(0, 100, 414, 414);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)valueChange:(UISlider *)sender {
    
    self.progressView.progress = sender.value;
}

@end
