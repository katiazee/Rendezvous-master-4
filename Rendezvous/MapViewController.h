//
//  MapViewController.h
//  Rendezvous
//
//  Created by Katerina Zorko on 12/4/14.
//  Copyright (c) 2014 KaterinaZorko. All rights reserved.
//
#ifndef Rendezvous_MapViewController_h
#define Rendezvous_MapViewController_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>
{
    CLLocationManager *locationManager;
    IBOutlet MKMapView *mapView;
}

    

@end

#endif
