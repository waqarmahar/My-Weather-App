//
//  City_BO.h
//  My Weather App
//
//  Created by Muhammad Iqbal on 30/04/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City_BO : NSObject{
    
    NSString *name;
    NSString *location;
    NSString *latitude;
    NSString *longitude;
    NSString *currentWeather;
    NSString *currentWeatherIconURL;
    NSString *temp;
    NSString *tempRange;
    NSString *atmosphericPressure;
    NSString *currentHumidity;
}
@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString	*location;
@property (nonatomic,readwrite)NSString	*latitude;
@property (nonatomic,readwrite)NSString *longitude;
@property (nonatomic,strong)NSString *currentWeather;
@property (nonatomic,strong)NSString *currentWeatherIconURL;
@property (nonatomic,strong)NSString *temp;
@property (nonatomic,strong)NSString *tempRange;
@property (nonatomic,strong)NSString *atmosphericPressure;
@property (nonatomic,strong)NSString *currentHumidity;



@end
