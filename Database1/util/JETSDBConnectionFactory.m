//
//  JETSDBConnectionFactory.m
//  Database1
//
//  Created by Mahmoud Amin on 4/5/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import "JETSDBConnectionFactory.h"

static JETSDBConnectionFactory *sharedInstance = nil;
static FMDatabaseQueue *queue =nil;

@implementation JETSDBConnectionFactory

-(Boolean)intializeDB{

    return YES;
}
+(JETSDBConnectionFactory*)getInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[JETSDBConnectionFactory alloc] init];
    });
    return sharedInstance;
}

-(Boolean)excuteUpdate:(NSString*)query{
    return YES;
}
-(FMResultSet*)excuteQuery:(NSString*)query{
    return nil;
}


@end
