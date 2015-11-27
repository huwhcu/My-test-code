//
//  ViewController.m
//  20151127
//
//  Created by qingyun on 15/11/27.
//  Copyright (c) 2015年 QingYun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (nonatomic, weak) UIImageView *theImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setScrollView];
}

- (void)setScrollView
{
    UIImage *theImg1 = [UIImage imageNamed:@"53727780_p0.jpg"];
    UIImageView *theImgView1 = [[UIImageView alloc] initWithImage:theImg1];
    theImgView1.frame = CGRectMake(0, 0, 755, 1856);
    [self.view addSubview:theImgView1];
    
    UIScrollView *theScrView = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];

    theScrView.contentSize = theImgView1.frame.size;

    [self.view addSubview:theScrView];
    [theScrView addSubview:theImgView1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
