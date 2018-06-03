//
//  Goverment.h
//  NotificationsTest
//
//  Created by Admin on 28.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString* const GovermentTaxLevelDidChangeNotification;
extern NSString* const GovermentSalaryDidChangeNotification;
extern NSString* const GovermentPensionDidChangeNotification;
extern NSString* const GovermentAveragePriceDidChangeNotification;

@interface Goverment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;

@end
