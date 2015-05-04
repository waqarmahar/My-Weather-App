//
//  CityWeatherViewController.h
//  My Weather App
//
//  Created by Muhammad Iqbal on 30/04/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City_BO.h"
#import "FetchWeather.h"

@interface CityWeatherViewController : UIViewController{
    
}
@property (weak, nonatomic) IBOutlet UIImageView *weatherIcon;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) NSString *myCityName;
@property (weak, nonatomic) IBOutlet UILabel *cityName;
@property (weak, nonatomic) IBOutlet UILabel *temperature;
@property (weak, nonatomic) IBOutlet UILabel *temperatureRange;
@property (weak, nonatomic) IBOutlet UILabel *longittude;
@property (weak, nonatomic) IBOutlet UILabel *latitude;
@property (weak, nonatomic) IBOutlet UILabel *currentWeather;
@property (weak, nonatomic) IBOutlet UILabel *currentHumidity;
@property (weak, nonatomic) IBOutlet UILabel *atmosphericPressure;


@end
