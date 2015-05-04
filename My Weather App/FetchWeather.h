//
//  FetchWeather.h
//  My Weather App
//
//  Created by Muhammad Iqbal on 03/05/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebService.h"
#import "DAL.h"
#import "City_BO.h"

@interface FetchWeather : NSObject{
    
}



+(City_BO *) fetchWeatherForCity:(NSString *)cityName ;
+(NSMutableArray *) fetchWeatherwithIDs:(NSMutableArray *) cityIDs ;
@end
