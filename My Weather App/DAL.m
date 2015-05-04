//
//  DAL.m
//  My Weather App
//
//  Created by Muhammad Iqbal on 03/05/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import "DAL.h"

@implementation DAL
+(NSDictionary *) fetchWeatherForCity:(NSString *)url{
    WebService *wc=[[WebService alloc]init];
    NSDictionary *fetchedData=[wc fetchJSON:url];
    return fetchedData;
}

@end
