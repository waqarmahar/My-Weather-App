//
//  HomeViewControllerTableViewController.m
//  My Weather App
//
//  Created by Muhammad Iqbal on 03/05/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import "HomeViewControllerTableViewController.h"
#import "CityWeatherViewController.h"
BOOL Ascending;

@interface HomeViewControllerTableViewController ()

@end

@implementation HomeViewControllerTableViewController
@synthesize tableData,tableViewObject;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Weather Station";
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Descend" style:UIBarButtonItemStyleDone target:self action:@selector(reArrangeClicked:)];
    self.navigationItem.rightBarButtonItem = anotherButton;
    NSMutableArray *testCall = [[NSMutableArray alloc] initWithObjects:@"2638077",@"2643743",@"2644688",@"5089178",nil];
    tableData = [FetchWeather fetchWeatherwithIDs:testCall];
    Ascending=YES;
    [tableData sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"temp" ascending:Ascending]]];
}
- (IBAction)reArrangeClicked:(id)sender {
    Ascending=!Ascending;
    if ([self.navigationItem.rightBarButtonItem.title isEqualToString:@"Ascend"])
        self.navigationItem.rightBarButtonItem.title=@"Descend";
    else
        self.navigationItem.rightBarButtonItem.title=@"Ascend";
    
    [tableData sortUsingDescriptors:@[[NSSortDescriptor sortDescriptorWithKey:@"temp" ascending:Ascending]]];
    [self.tableViewObject reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [tableData count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }
    City_BO *city= [[City_BO alloc] init];
    city = [tableData objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@ %@",city.name,city.temp];
//    cell.detailTextLabel.text = city.temp;
    NSString *ImageURL = city.currentWeatherIconURL;
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:ImageURL]];
    cell.imageView.image = [UIImage imageWithData:imageData];
//    cell.imageView.image = [UIImage imageNamed:@"geekPic.jpg"];
    
    return cell;
}

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


#pragma mark - Table view delegate

// In a xib-based application, navigation from a table can be handled in -tableView:didSelectRowAtIndexPath:
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    // Push the view controller.
    CityWeatherViewController *vc = [[CityWeatherViewController alloc] initWithNibName:@"CityWeatherViewController" bundle:nil];
    City_BO *city= [[City_BO alloc] init];
    city = [tableData objectAtIndex:indexPath.row];
    vc.myCityName=city.name;
    [self.navigationController pushViewController:vc animated:YES];
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
