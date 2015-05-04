//
//  ViewController.m
//  My Weather App
//
//  Created by Muhammad Iqbal on 29/04/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import "ViewController.h"
#import "NetworkController.h"
#import "City_BO.h"
#import "CityWeatherViewController.h"
#import "WebService.h"


//@synthesize responseData = _responseData;

@interface ViewController ()

@end

@implementation ViewController

@synthesize button1,button2,button3,button4;
-(void) methodUsingParsedData: (NSDictionary* )result{
    NSLog(result);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    

   
}

- (IBAction)pressButtonManchester:(id)sender{
    NSString *responseStr=[[NetworkController SharedNetworkInstance] loadWeather:@"Manchester"];
    
}
- (IBAction)pressButtonLeeds:(id)sender{
    NSString *responseStr=[[NetworkController SharedNetworkInstance] loadWeather:@"Leeds"];

    
}
- (IBAction)pressButtonSheffield:(id)sender{
    NSLog(@"hello");
    CityWeatherViewController *vc = [[CityWeatherViewController alloc] initWithNibName:@"CityWeatherViewController" bundle:nil];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentModalViewController:nc animated:YES];
    
//    CityWeatherViewController *vc = [[CityWeatherViewController alloc] initWithNibName:@"CityWeatherViewController" bundle:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)pressButtonLondon:(id)sender{
    NSString *responseStr=[[NetworkController SharedNetworkInstance] loadWeather:@"London"];
    
}
    // Do any additional setup after loading the view, typically from a nib.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
