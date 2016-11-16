//
//  ViewController.m
//  GHDB_Demo
//
//  Created by GaoHe on 2016/11/16.
//  Copyright © 2016年 GaoHe. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"
#import "GHDataBaseManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [GHDataBaseManager createTableWithModelClass:[TestModel class]];
}

- (IBAction)insertAction:(id)sender {
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    NSArray *arr = [NSArray arrayWithObjects:@"obj1", @"obj2", nil];
    
    [GHDataBaseManager insertDataWithModel:[TestModel testModelWithStrTest:@"小明" numTest:@18 intTest:20 floatTest:1.8 longTest:13888888888 double:3.141592654321 dataTest:[NSData data] dicTest:dic arrTest:arr]];
}

- (IBAction)deleteAction:(id)sender {
    
}

- (IBAction)updateAction:(id)sender {
    
}

- (IBAction)clearAction:(id)sender {
    [GHDataBaseManager clearTableWithModelClass:[TestModel class]];
}

- (IBAction)selectAction:(id)sender {
    NSArray * arr = [GHDataBaseManager selectTableWithModelClass:[TestModel class]];
    for (TestModel *model in arr) {
        NSLog(@"%@", model);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
