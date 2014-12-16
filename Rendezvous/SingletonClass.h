//
//  SingletonClass.h
//  Rendezvous
//
//  Created by Katerina Zorko on 8/8/14.
//  Copyright (c) 2014 KaterinaZorko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingletonClass : NSObject
{
    NSString *locationSharingPreference;
    //NSString *storedHourData;
    NSInteger hourRow;
    NSInteger minRow;
    NSString *hourLabelText;
}
@property (nonatomic, retain) NSString *locationSharingPreference;
//@property (nonatomic, retain) NSString *storedHourData;
@property (nonatomic) NSInteger hourRow;
@property (nonatomic) NSInteger minRow;
@property (nonatomic, retain) NSString *hourLabelText;


//@property (nonatomic) NSUInteger locationSharingPreference;

+ (SingletonClass *)sharedSingletonClass;
//methods for getting and setting the location sharing preference (distance vs location)
+(NSString *) getSomeData;
+(void) setSomeData:(NSString *)locationSharingPreference;

//methods for getting and setting the hour on the UIPickerView
+(NSInteger) getUIPickerViewSettings;
+(void) setUIPickerViewSettings: (NSInteger)hourRow;

//methods for getting and setting the minutes on the UIPickerView
+(NSInteger) getUIPickerViewMin;
+(void) setUIPickerViewMin: (NSInteger)minRow;

//methods for getting and setting the hour label text on UIPickerView
+(NSString *) getUIPickerViewHourLabel;
+(void) setUIPickerViewHourLabel: (NSString *)hourLabelText;
@end
