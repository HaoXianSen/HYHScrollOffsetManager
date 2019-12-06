//
//  HYHViewController.m
//  HYHScrollOffsetManager
//
//  Created by 1335430614@qq.com on 12/06/2019.
//  Copyright (c) 2019 1335430614@qq.com. All rights reserved.
//

#import "HYHViewController.h"
#import <HYHScrollOffsetManager/HYHScrollOffsetManager.h>

@interface HYHViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak)UITableView *tableView;

@property (nonatomic, strong) HYHScrollOffsetManager *scrollViewManager;

@end

@implementation HYHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"YHNagigation";
    [self setTableViewHeaderView];
}
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBar.alpha = 0;
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}
- (void)initialized {
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.rowHeight = 80.f;
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:tableView];
    _tableView = tableView;
    
    _scrollViewManager = [HYHScrollOffsetManager scrollOffsetManager:_tableView];
    _scrollViewManager.animateRange = HYHAnimateDistanceRangeMake(100, 90, 0.25);
//    _scrollViewManager.animationType = HYHScrollOffsetAnimationTypeCustom;
//    _scrollViewManager.customAnimationBlock = ^(CGPoint offset, HYHAnimateDistanceRange range) {
//      // handle logic by offset
//    };
}

- (void)setTableViewHeaderView {
    if (!_tableView) {
        [self initialized];
    }
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _tableView.frame.size.width, 200)];
    UIImageView *bgImageView = [[UIImageView alloc] initWithFrame:bgView.bounds];
    bgImageView.image = [UIImage imageNamed:@"1"];
    [bgView addSubview:bgImageView];
    _tableView.tableHeaderView = bgImageView;
}

#pragma mark - UITableViewDataSource / Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"I am %ld row", indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
