//
//  FourViewController.m
//  AppiuTestDemo
//
//  Created by Fernando on 2018/5/16.
//  Copyright © 2018年 Liteng. All rights reserved.
//

#import "FourViewController.h"
#define WEBURL @"https://www.baidu.com"
//#define WEBURL @"http://www.jlwsxf.gov.cn/jlxf/index/jls_mb.jsp"
@interface FourViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *mainWkView;

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:WEBURL]];
    [_mainWkView loadRequest:req];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
