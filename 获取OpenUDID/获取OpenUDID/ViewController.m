//
//  ViewController.m
//  获取OpenUDID
//
//  Created by mac on 16/9/1.
//  Copyright © 2016年 cnlod. All rights reserved.
//

#import "ViewController.h"
#include "OpenUDID.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString* openUDID = [OpenUDID value];
    
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:@{@"oid" : openUDID}
                                                       options:NSJSONWritingPrettyPrinted
                                                         error:nil];
    
    NSLog(@"%@", [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
