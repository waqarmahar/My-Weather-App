//
//  CityWeatherViewController.m
//  My Weather App
//
//  Created by Muhammad Iqbal on 30/04/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import "CityWeatherViewController.h"
#import "WebService.h"

@interface CityWeatherViewController ()
{
    
}
@end

@implementation CityWeatherViewController
@synthesize location,myCityName,cityName,temperature,temperatureRange,longittude,latitude,currentHumidity,currentWeather,atmosphericPressure,weatherIcon;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    City_BO *city;
    city=[FetchWeather fetchWeatherForCity:self.myCityName];

    cityName.text = [NSString stringWithFormat:@"%@",city.name];
    temperature.text=[NSString stringWithFormat:@"%@ %@",temperature.text,city.temp];
    temperatureRange.text=[NSString stringWithFormat:@"%@ %@",temperatureRange.text,city.tempRange];
    currentWeather.text=[NSString stringWithFormat:@"%@ %@",currentWeather.text,city.currentWeather];
    currentHumidity.text=[NSString stringWithFormat:@"%@ %@",currentHumidity.text,city.currentHumidity];
    atmosphericPressure.text=[NSString stringWithFormat:@"%@ %@",atmosphericPressure.text,city.atmosphericPressure];
    location.text= [NSString stringWithFormat:@"%@",city.location];
    longittude.text=[NSString stringWithFormat:@"%@ %@",longittude.text,city.longitude];
    latitude.text=[NSString stringWithFormat:@"%@ %@",latitude.text,city.latitude];
    NSData *imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:city.currentWeatherIconURL]];
    weatherIcon.image = [UIImage imageWithData:imageData];
    
    
    
    
    NSLog(@"%@", temperature.text);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)backPressed: (id)sender
//{
//    [self.navigationController popViewControllerAnimated: YES]; // or popToRoot... if required.
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
