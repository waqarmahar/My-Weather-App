//
//  NetworkController.h
//  InstaEngine
//
//  Created by Numan on 6/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NetworkController : NSObject {
    BOOL flag;
}

+(NetworkController*)SharedNetworkInstance;
@property (nonatomic, strong) NSMutableData *responseData;
@property (nonatomic, strong) NSDictionary *responseDic;
-(NSDictionary *) loadWeather:(NSString *) city;

//-(NSString *) NetworkCall:(NSString *) requestJSON error:(NSError **)errorObject callName:(NSString *)Apiname;
//-(NSString *) CloseByGooglePlaces:(NSError **)errorObject callName:(NSString *)Apiname;
//
//-(NSString *) CategoriesList:(NSString *) requestJSON error:(NSError **)errorObject callName:(NSString *)Apiname;
//
//-(NSString *) RoutesFromGoogle:(NSString *) requestJSON:(NSError **)errorObject;
//
//-(NSString*)getGoogleDirectionsFrom:(NSString*)startLocation to:(NSString*)endLocation withError:(NSError**)theError;

@end
