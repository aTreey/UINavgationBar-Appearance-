//
//  MYHomeViewController.m
//  home_Test
//
//  Created by Apeng on 16/5/14.
//  Copyright © 2016年 Apeng. All rights reserved.
//

#import "MYHomeViewController.h"

@interface MYHomeViewController ()

@end

@implementation MYHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setNavcontroller];
}

- (void) setNavcontroller {
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTitle:@"澳大利亚" NorImage:@"sw_nav_return" HightImage:nil Target:self action:@selector(leftBtnClick)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTitle:nil NorImage:@"sw_particulars_collect" HightImage:@"sw_particulars_collect_sel" Target:self action:@selector(rightBtnClick)];
    
    NSArray *items = @[@"行", @"吃"];
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:items];
    segment.frame = CGRectMake(0, 0, 100, 30);
    segment.backgroundColor = [UIColor greenColor];
    
    [self.navigationItem setTitleView:segment];
    
}



- (void)leftBtnClick {
    
    NSLog(@"城市切换");
}

- (void)rightBtnClick {
    
    NSLog(@"个人中心");
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
