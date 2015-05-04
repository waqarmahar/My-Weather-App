//
//  FetchWeather.m
//  My Weather App
//
//  Created by Muhammad Iqbal on 03/05/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import "FetchWeather.h"
#define baseurl @"http://api.openweathermap.org/data/2.5/"

@implementation FetchWeather

+(City_BO *) fetchWeatherForCity:(NSString *)cityName {
    NSString *urlPath = [NSString stringWithFormat:@"weather?q=%@",cityName];
    NSMutableString *domain = [[NSMutableString alloc] initWithString:baseurl];
    [domain appendString:urlPath];
    NSLog(domain);
    //@"http://api.openweathermap.org/data/2.5/weather?q=Sheffield,uk";
    
    

     NSDictionary *fetchedData= [DAL fetchWeatherForCity:domain];
    
    
    
        for(id key in fetchedData) {
    
            id value = [fetchedData objectForKey:key];
    
            NSString *keyAsString = (NSString *)key;
            NSString *valueAsString = (NSString *)value;
            NSLog(@"key: %@", keyAsString);
            NSLog(@"value: %@", valueAsString);
        }
    
    City_BO *city=[[City_BO alloc] init];
    city.name=[fetchedData objectForKey:@"name"];
    NSLog(@"latitude: %@", city.name);
    city.latitude=[[fetchedData objectForKey:@"coord"] objectForKey:@"lat"];
    NSLog(@"latitude: %@", city.latitude);
    city.longitude=[[fetchedData objectForKey:@"coord"] objectForKey:@"lon"];
    NSLog(@"longitude: %@", city.longitude);
    city.location=[NSString stringWithFormat:@"Location: United Kingdom"];
    NSLog(@"latitude: %@", city.location);
    city.temp=[[fetchedData objectForKey:@"main"] objectForKey:@"temp"];
    NSLog(@"temp: %@", city.temp);
    NSString *temp_min= [[fetchedData objectForKey:@"main"] objectForKey:@"temp_min"];
    NSString *temp_max= [[fetchedData objectForKey:@"main"] objectForKey:@"temp_max"];
    city.tempRange=[NSString stringWithFormat:@"%@ to %@", temp_min ,temp_max];
    NSLog(@"tempRange: %@", city.tempRange);
    city.currentHumidity= [[fetchedData objectForKey:@"main"] objectForKey:@"humidity"];
    NSLog(@"currentHumidity: %@", city.currentHumidity);
    city.atmosphericPressure= [[fetchedData objectForKey:@"main"] objectForKey:@"pressure"];
    NSLog(@"atmosphericPressure: %@", city.atmosphericPressure);
    city.currentWeather=[[[fetchedData objectForKey:@"weather"] objectAtIndex:0] objectForKey:@"main"];
    NSLog(@"currentWeather: %@", city.currentWeather);

    return city;
    
}
@end

