//
//  ViewController.m
//  jenkinsCocoa
//
//  Created by jisa on 2017/5/15.
//  Copyright © 2017年 jisa. All rights reserved.
//

#import "ViewController.h"
//#import <Masonry/Masonry.h>

@interface ViewController ()
@property (nonatomic, strong) UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configUI];
}

#pragma -- private method
- (void)configUI{
    [self.view addSubview:self.testView];
    [self configFrame];
}

#pragma -- load
- (UIView *)testView{
    if (!_testView) {
        _testView = [[UIView alloc] initWithFrame:CGRectZero];
        _testView.backgroundColor = [UIColor blueColor];
    }
    return _testView;
}

#pragma -- Masnory
- (void)configFrame{
    [self.testView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(@100);
        make.height.mas_equalTo(@100);
        make.center.equalTo(self.view);
    }];
}



@end
