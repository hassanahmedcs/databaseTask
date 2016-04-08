//
//  JETSViewController.m
//  Database1
//
//  Created by JETS on 4/4/16.
//  Copyright (c) 2016 JETS. All rights reserved.
//

#import "JETSViewController.h"
#import "JETSDBConnectionFactory.h"
@interface JETSViewController ()

@end

@implementation JETSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    JETSDBConnectionFactory *fact=[JETSDBConnectionFactory getInstance];
    [fact excuteUpdate:[NSString stringWithFormat:@"INSERT INTO Exhibitor (id, imageURL, companyAddress, companyAbout, fax, contactName, contactTitle, companyUrl, email, countryName, cityName, companyName, phones, mobiles)  VALUES (%d, \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\")",4,@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test",@"test"]];
    FMResultSet *rs=[fact excuteQuery:@"SELECT COUNT(*) as _count FROM Exhibitor"];
    if([rs next]){
        NSLog(@"has data %d",[rs intForColumn:@"_count"]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
