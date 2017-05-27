//
//  PokePin.swift
//  PokemonGo
//
//  Created by Jorge Garnica Blanco on 5/24/17.
//  Copyright © 2017 Jorge Garnica Blanco. All rights reserved.
//

import UIKit
import MapKit

class PokePin : NSObject, MKAnnotation{
    var coordinate: CLLocationCoordinate2D
    var pokemon : Pokemon
    init(coord: CLLocationCoordinate2D, pokemon:Pokemon){
        self.coordinate = coord
        self.pokemon = pokemon
    }
}

