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
#define minScale  1
#define maxScale  2
@interface HYViewController ()

@property(nonatomic,strong)UIScrollView *scrollView;
@end

@implementation HYViewController

- (void)viewDidLoad
{
    
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
    
    
    HYChainView *chainView = [[HYChainView alloc] initWithFrame:CGRectMake(0, 0, 1000, 1000)];
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    [self.view addSubview:_scrollView];
    _scrollView.scrollEnabled = YES;
    _scrollView.userInteractionEnabled = YES;
    _scrollView.contentSize = CGSizeMake(1000, 1000);
    _scrollView.maximumZoomScale = 2;
    [_scrollView addSubview:chainView];

    
    
    [_scrollView setMinimumZoomScale:minScale];
    [_scrollView setMaximumZoomScale:maxScale];
    [_scrollView setZoomScale:minScale animated:YES];
  
    
}

- (void)initData {
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"chainjson" ofType:@"json"];
//    NSData *data = [[NSData alloc] initWithContentsOfFile:path];
    
//    NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
    
//    _nodeDataArray = [jsonDict[@"nodeDataArray"] mutableCopy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)viewWillAppear:(BOOL)animated{
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}


- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return scrollView;
}


// called before the scroll view begins zooming its content缩放开始的时候调用
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view NS_AVAILABLE_IOS(3_2){
    NSLog(@"%s",__func__);
}

// scale between minimum and maximum. called after any 'bounce' animations缩放完毕的时候调用。
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale

{
    //把当前的缩放比例设进ZoomScale，以便下次缩放时实在现有的比例的基础上
    
    [_scrollView setZoomScale:scale animated:NO];
}

// 缩放时调用
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    // 可以实时监测缩放比例
    NSLog(@"......scale is %f",scrollView.zoomScale);
    
}

@end
