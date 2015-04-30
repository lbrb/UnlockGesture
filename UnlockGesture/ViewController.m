//
//  ViewController.m
//  UnlockGesture
//
//  Created by liangbin on 15/4/30.
//  Copyright (c) 2015年 liangbin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *subView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s", __func__);
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)awakeFromNib{
    NSLog(@"%s", __func__);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
