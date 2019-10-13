//
//  Auto.swift
//  AplicacionAutosParcial
//
//  Created by Ana Lourdes Cota Rascon on 10/12/19.
//  Copyright © 2019 Ana Lourdes Cota Rascon. All rights reserved.
//

import Foundation

class Auto {
    
    var matricula : String?
    var modelo: String?
    var marca : String?
    var anio : String?
    var conductor : String?
    var imagen : String?
    
    init(matricula : String, modelo : String, marca: String, anio : String, conductor : String, imagen : String) {
        self.matricula = matricula
        self.modelo = modelo
        self.marca = marca
        self.anio = anio
        self.conductor = conductor
        self.imagen = imagen
    }
}
