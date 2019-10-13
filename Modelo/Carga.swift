//
//  Carga.swift
//  AplicacionAutosParcial
//
//  Created by Ana Lourdes Cota Rascon on 10/13/19.
//  Copyright © 2019 Ana Lourdes Cota Rascon. All rights reserved.
//

import Foundation

class Carga {
    
    var matriculaAuto : String?
    var totalDinero: String?
    var totalLitros : String?
    
    init(matriculaAuto: String, totalDinero : String, totalLitros: String) {
        
        self.matriculaAuto = matriculaAuto
        self.totalDinero = totalDinero
        self.totalLitros = totalLitros
        
    }
}
