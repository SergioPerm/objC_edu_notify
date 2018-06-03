//
//  Goverment.m
//  NotificationsTest
//
//  Created by Admin on 28.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "Goverment.h"

NSString* const GovermentTaxLevelDidChangeNotification = @"GovermentTaxLevelDidChangeNotification";
NSString* const GovermentSalaryDidChangeNotification = @"GovermentSalaryDidChangeNotification";
NSString* const GovermentPensionDidChangeNotification = @"GovermentPensionDidChangeNotification";
NSString* const GovermentAveragePriceDidChangeNotification = @"GovermentAveragePriceDidChangeNotification";

NSString* const GovermentTaxLevelUserInfoKey = @"GovermentTaxLevelUserInfoKey";
NSString* const GovermentSalaryUserInfoKey = @"GovermentSalaryUserInfoKey";
NSString* const GovermentPensionUserInfoKey = @"GovermentPensionUserInfoKey";
NSString* const GovermentAveragePriceUserInfoKey = @"GovermentAveragePriceUserInfoKey";

@implementation Goverment

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 5;
        self.salary = 1000;
        self.pension = 500;
        self.averagePrice = 10;
    }
    return self;
}

- (void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary* dictionary2 = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:GovermentTaxLevelUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary2];
}

- (void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary* dictionary2 = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:GovermentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary2];

}

- (void) setPension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary* dictionary2 = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:GovermentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary2];

}

- (void) setAveragePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary* dictionary2 = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:GovermentAveragePriceUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:GovermentAveragePriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary2];
}

@end
