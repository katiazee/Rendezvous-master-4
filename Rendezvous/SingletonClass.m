//
//  SingletonClass.m
//  Rendezvous
//
//  Created by Katerina Zorko on 8/8/14.
//  Copyright (c) 2014 KaterinaZorko. All rights reserved.
//

#import "SingletonClass.h"

@implementation SingletonClass

@synthesize locationSharingPreference;
//@synthesize storedHourData;
@synthesize hourRow;
@synthesize minRow;
@synthesize hourLabelText;

+ (SingletonClass *)sharedSingletonClass {
    
    static SingletonClass *sharedSingletonClass = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedSingletonClass = [[self alloc] init];
    });
    return sharedSingletonClass;
}
+(NSString *) getSomeData {
    // Ensure we are using the shared instance
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    return shared.locationSharingPreference;
}

+(void) setSomeData:(NSString *)locationSharingPreference {
    // Ensure we are using the shared instance
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    shared.locationSharingPreference = locationSharingPreference;
}

//methods for hour
+(NSInteger) getUIPickerViewSettings
{
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    return shared.hourRow;
}
+(void) setUIPickerViewSettings:(NSInteger) hourRow
{
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    shared.hourRow = hourRow;
}

//methods for minutes
+(NSInteger) getUIPickerViewMin
{
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    return shared.minRow;

}
+(void) setUIPickerViewMin: (NSInteger)minRow
{
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    shared.minRow = minRow;

}

//methods for the hour label text on UIPickerView
+(NSString *) getUIPickerViewHourLabel
{
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    return shared.hourLabelText;

}
+(void) setUIPickerViewHourLabel: (NSString *)hourLabelText
{
    SingletonClass *shared = [SingletonClass sharedSingletonClass];
    shared.hourLabelText = hourLabelText;
}

//initialize hour and minute on the picker view to be -1, so that if statements can work in the
//rendezvous view controller
-(id)init {
    if (self = [super init]) {
        hourRow = -1;
        minRow = -1;
    }
    
    return self;
}

@end
