//
//  Location.swift
//  GameStop
//
//  Created by Eissa Al on 4/30/17.
//  Copyright © 2017 Eissa Al. All rights reserved.
//
import UIKit
import MapKit

class Location: UIViewController {
    @IBOutlet weak var MapView: MKMapView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Location 1
        
        let GameStop = CLLocationCoordinate2D (latitude: 24.484430, longitude: 54.348630)
        
        let sp = MKCoordinateSpanMake(0.05,0.05)
        let reg = MKCoordinateRegion(center: GameStop, span:sp)
        MapView.setRegion(reg, animated: true)
        
        let GameStop1 = MKPointAnnotation()
        GameStop1.coordinate = GameStop
        GameStop1.title = " Game Stop "
        GameStop1.subtitle = "02 11117700"
        MapView.addAnnotation(GameStop1)
        
        //Location 2
        
        let Game = CLLocationCoordinate2D (latitude: 25.488801,longitude: 55.382953)
        
        
        let GameStop1b = MKPointAnnotation()
        GameStop1b.coordinate = Game
        GameStop1b.title = " Game Stop"
        GameStop1b.subtitle = "02 64909990"
        MapView.addAnnotation(GameStop1)
        
        //Location3
        
        let GameStop11 = CLLocationCoordinate2D (latitude: 26.441167,longitude: 54.444938)
        
        
        
        let GameStop1c = MKPointAnnotation()
        GameStop1c.coordinate = GameStop11
        GameStop1c.title = " Game Stop"
        GameStop1c.subtitle = "055 509888"
        MapView.addAnnotation(GameStop1c)
        
        //Location4
        
        let Game2 = CLLocationCoordinate2D (latitude: 24.5060000,longitude: 56.588835)
        
        let GameStopD = MKPointAnnotation()
        GameStopD.coordinate = Game2
        GameStopD.title = " Choice Flowers"
        GameStopD.subtitle = "02 553 2509"
        MapView.addAnnotation(GameStopD)
    }
    
    
    
    
    
    
}
