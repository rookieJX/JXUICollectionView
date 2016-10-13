//
//  ViewController.m
//  Collection
//
//  Created by 灏月 on 16/10/13.
//  Copyright © 2016年 灏月. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel * label = [[UILabel alloc] init];
    label.textColor = [UIColor lightGrayColor];
    label.text = @"任意点击界面";
    label.textAlignment = NSTextAlignmentCenter;
    label.frame = [UIScreen mainScreen].bounds;
    [self.view addSubview:label];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CollectionViewController * coll = [[CollectionViewController alloc] init];
    
    [self presentViewController:coll animated:YES completion:nil];
}
@end
