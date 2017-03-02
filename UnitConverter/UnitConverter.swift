//
//  UnitConverter.swift
//  UnitConverter
//
//  Created by Missy Allan on 3/1/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

class UnitConverter {
    
    
    func degreesFarenheit(degreesCelsius: Int) -> Int {
        return Int(1.8 * Float(degreesCelsius) + 32.0)
    }
    
    
    func convertToCelsius(degreesF: Int) -> Int {
        return Int(5.0 / 9.0 * (Double(degreesF) - 32.0))
    }
}



