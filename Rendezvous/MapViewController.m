//
//  MapViewController.m
//  Rendezvous
//
//  Created by Katerina Zorko on 12/4/14.
//  Copyright (c) 2014 KaterinaZorko. All rights reserved.
//

#import "MapViewController.h"
@interface MapViewController ()

@end

@implementation MapViewController
-(void)viewDidLoad {
    [super viewDidLoad];
    
    locationManager = [[CLLocationManager alloc] init];
    [locationManager setDelegate:(id)self];
    [locationManager requestWhenInUseAuthorization];
    [locationManager requestAlwaysAuthorization];
    [locationManager startMonitoringSignificantLocationChanges];
    [locationManager startUpdatingLocation];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Make this controller the delegate for the map view.
    mapView.delegate = self;
    
    // Ensure that you can view your own location in the map view.
    [mapView setShowsUserLocation:YES];
    
    //Instantiate a location object.
    
    //Make this controller the delegate for the location manager.
    
    //Set some parameters for the location object.
    [locationManager setDistanceFilter:kCLDistanceFilterNone];
    [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
    
}
- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views {
    MKCoordinateRegion region;
    region = MKCoordinateRegionMakeWithDistance(locationManager.location.coordinate,1000,1000);
    
    
    [mv setRegion:region animated:YES];
}
@end