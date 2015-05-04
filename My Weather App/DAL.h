//
//  DAL.h
//  My Weather App
//
//  Created by Muhammad Iqbal on 03/05/2015.
//  Copyright (c) 2015 Muhammad Iqbal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebService.h"
@interface DAL : NSObject{
    
}
+(NSDictionary *) fetchWeatherForCity:(NSString *)url ;

@end
