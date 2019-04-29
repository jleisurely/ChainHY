//
//  HYViewController.m
//  HYCloudChain
//
//  Created by wangyu1001@live.cn on 04/29/2019.
//  Copyright (c) 2019 wangyu1001@live.cn. All rights reserved.
//

#import "HYViewController.h"
#import "HYChainView.h"
#import <HYBaseModule/HYBaseModule.h>
#import <HYDefine/HYDefine.h>

@interface HYViewController ()


@end

@implementation HYViewController

- (void)viewDidLoad
{
    [UIApplication sharedApplication] set
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self initData];
    
//    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    [self.view addSubview:_tableView];
//    [_nodeDataArray enumerateObjectsUsingBlock:^(NSDictionary *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        
//    }];
    
    
    HYChainView *chainView = [[HYChainView alloc] initWithFrame:CGRectMake(0, 0, kScreenHeight, kScreenWidth)];
    UIScrollView *scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    [self.view addSubview:scroll];
    scroll.scrollEnabled = YES;
    scroll.userInteractionEnabled = YES;
    scroll.contentSize = CGSizeMake(2000, 2000);
    scroll.maximumZoomScale = 2;
    [scroll addSubview:chainView];
    
}

- (void)initData {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"chainjson" ofType:@"json"];
    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    
    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    
//    _nodeDataArray = [jsonDict[@"nodeDataArray"] mutableCopy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







@end
