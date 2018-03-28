//
//  ViewController.m
//  WebPDemo
//
//  Created by zhujinhui on 2018/3/26.
//  Copyright © 2018年 kyson. All rights reserved.
//

#import "ViewController.h"
#import "WDImageViewAnimateDemoViewController.h"
#import "WDLoadGifViewController.h"
#import "WDWebPDemoViewController.h"
#import "LHPerformanceMonitorService.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (strong,nonatomic) UITableView *tableView;

@property (nonatomic, strong) NSArray *tableCellTitles;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.frame = [UIScreen mainScreen].bounds;
    [self.view addSubview:self.tableView];
    
    [LHPerformanceMonitorService run];

}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.tableCellTitles.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellTag = @"cellTag";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellTag];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellTag];
    }
    
    cell.textLabel.text = self.tableCellTitles[indexPath.row];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
            WDImageViewAnimateDemoViewController *animateViewController = [[WDImageViewAnimateDemoViewController alloc] init];
            [self.navigationController pushViewController:animateViewController animated:YES];
        }
            break;
            case 1:
        {
            WDLoadGifViewController *vc = [[WDLoadGifViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];

        }
            break;
            case 2:
        {
            WDWebPDemoViewController *vc = [[WDWebPDemoViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            
        }
            break;
            
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
    }
    
    return _tableView;
}


-(NSArray *)tableCellTitles
{
    if (!_tableCellTitles) {
        _tableCellTitles = @[@"通过ImageView加载动图",@"加载gif",@"加载WebP图片"];
    }
    return _tableCellTitles;
}


@end
