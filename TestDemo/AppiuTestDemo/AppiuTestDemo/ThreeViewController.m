//
//  ThreeViewController.m
//  AppiuTestDemo
//
//  Created by Fernando on 2018/5/15.
//  Copyright © 2018年 Liteng. All rights reserved.
//

#import "ThreeViewController.h"
#import "TableViewCell.h"

@interface ThreeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *texts;
@property (weak, nonatomic) IBOutlet UIButton *sendBtn;
@property (weak, nonatomic) IBOutlet UITableView *mainTable;
@property (nonatomic, strong) NSMutableArray *arrays;
@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Other";
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 5)];
    _mainTable.tableFooterView = view;
    _mainTable.delegate = self;
    self.arrays = [NSMutableArray array];
    _mainTable.dataSource = self;
}
- (IBAction)sendAction:(id)sender {
    
    if (self.texts.text.length > 0) {
        [self.arrays addObject:self.texts.text];
        [self.mainTable reloadData];
    } else {
        return;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.arrays.count > 0) {
        return self.arrays.count;
    } else {
        return 0;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (cell != nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"TableViewCell" owner:nil options:nil]firstObject];
        if (self.arrays.count > 0) {
            cell.labels.text = [NSString stringWithFormat:@"%@", self.arrays[indexPath.row]];
        }
        
        
    }
    return cell;
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
