//
//  ViewController.m
//  PJTableViewDemo
//
//  Created by 周鹏钜 on 16/10/24.
//  Copyright © 2016年 周鹏钜. All rights reserved.
//

#import "ViewController.h"
#import "PJTableViewCell.h"

static NSString *ID = @"PJTableViewCell";

#define WIDTH [[UIScreen mainScreen] bounds].size.width
#define HEIGHT [[UIScreen mainScreen] bounds].size.height

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"UITableView性能优化";
    
    [self setTableView];
}

- (void)setTableView {
    
    UITableView *tableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT) style:UITableViewStylePlain];
    [self.view addSubview:tableview];
    
    tableview.delegate = self;
    tableview.dataSource = self;
    
    tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [tableview registerClass:[PJTableViewCell class] forCellReuseIdentifier:ID];
}

#pragma mark - 实现UITableView代理
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    PJTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID forIndexPath:indexPath];
    if (!cell) {
    
        cell = [[PJTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    return cell;
}

- (void)drawCell:(PJTableViewCell *)cell withIndexPath:(NSIndexPath *)indexPath {

    
}

@end
