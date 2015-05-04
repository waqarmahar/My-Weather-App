//
//  HomeViewControllerTableViewController.h
//  My Weather App
//
//  Created by Muhammad Iqbal on 03/05/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewControllerTableViewController : UITableViewController{
    
}
@property (strong, nonatomic) IBOutlet UITableView *tableViewObject;
@property (nonatomic,strong) NSMutableArray *tableData;
@end
