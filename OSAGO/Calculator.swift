//
//  Calculator.swift
//  OSAGO
//
//  Created by Дмитрий on 02.03.17.
//  Copyright © 2017 Дмитрий. All rights reserved.
//

import Foundation


struct Calculate {
    
    var age = Int()
    var experience = Int()
    var horsePwr = Int()
   
    func ratioAge()->Float{
        switch (age,experience) {
        case (18...22,0...3):   return 1.8
        case (18...22,3...100): return 1.6
        case (22...120,0...3):  return 1.7
        case (22...120,3...100):return 1.0
        default:
            fatalError("Что то не так с возрастом")
        }
    }
    func ratioPower()->Float {
        switch horsePwr {
        case 1...50:     return 0.6
        case 51...70:    return 1.0
        case 71...100:   return 1.1
        case 101...120:  return 1.2
        case 121...150:  return 1.4
        //как обозначить range типа от 151 и больше(151>)?
        case 151...300 : return 1.6
        default:
            fatalError("Что то не так с лошадиными силами")
        }
    }
    var total:Float {
        let basicPrice:Float = 5000
        let a = ratioAge()
        let p = ratioPower()
        let tP = basicPrice * a * p
        return tP
    }

    
    //
}










