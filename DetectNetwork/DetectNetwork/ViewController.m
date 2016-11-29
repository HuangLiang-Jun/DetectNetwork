//
//  ViewController.m
//  DetectNetwork
//
//  Created by huang on 2016/11/29.
//  Copyright © 2016年 Huang. All rights reserved.
//

#import "ViewController.h"
#import "DetectNetworkStatus.h"

@interface ViewController ()<NetworkConnectionProtocol>

@end

@implementation ViewController
{
    UILabel *label;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    label = [[UILabel alloc]initWithFrame:CGRectMake(150.0, 200.0, 120.0, 20.0)];
    [self.view addSubview:label];
    
    DetectNetworkStatus *networkStatus = [[DetectNetworkStatus shareInstance]initWithVC:self];
    [networkStatus startDetectNetworkStatus];

}

// Protocol Method. 網路有連線才會執行
-(void)networkConnection{
    

    label.text = @"網路連線中";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
