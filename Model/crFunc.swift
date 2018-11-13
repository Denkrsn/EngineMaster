
//
//  crfunc.swift
//  Engine Master
//
//  Created by Denis Ganevitch on 26/11/2017.
//  Copyright © 2017 Denis Ganevitch. All rights reserved.
//

import Foundation




func CompressionRatioCalculation (bore:Double,stroke:Double,headVol:Double?,gasketBore:Double,gasketThikness :Double,domeVol :Double, gap:Double) -> String?
    
{
    var compressionRatio :Double
    var gasketVolume :Double = 0.0
    var clearanceVolume :Double
    var gapVolume:Double = 0.0
    if let headVolume = headVol {
        let gap = gap/1000
        let   bore = bore/1000
        let   stroke = stroke/1000
        let gasketBore = gasketBore/1000
        let gasketThikness = gasketThikness/1000
        
        gasketVolume = Double.pi * pow(gasketBore/2,2) * gasketThikness
        clearanceVolume = gasketVolume+(headVolume-domeVol)/1000000
        gapVolume = Double.pi * pow(bore/2,2) * gap
        
        compressionRatio = ((Double.pi/4)*pow(bore, 2)*stroke+(clearanceVolume+gapVolume))/(clearanceVolume+gapVolume)
        let CR = NSString(format: "%.3f", compressionRatio)
        return CR as String
        
    } else {
        return nil
    }
}
