//
//  StateController.swift
//  MusicByLocation
//
//  Created by Ssnehnil Ghosh on 02/03/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var lastKnownLocation: String = ""
    let locationHandler: LocationHandler = LocationHandler()
    
    func findMusic() {
        locationHandler.requestLocation()
    }
    
    func requestAccessToLocationData() {
        locationHandler.stateController = self
        locationHandler.requestAuthorisation()
    }
}
