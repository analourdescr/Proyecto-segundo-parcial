//
//  NuevaCargaController.swift
//  AplicacionAutosParcial
//
//  Created by Ana Lourdes Cota Rascon on 10/13/19.
//  Copyright © 2019 Ana Lourdes Cota Rascon. All rights reserved.
//

import Foundation
import UIKit

class NuevaCargaController : UIViewController {
    
    var callbackActualizarTablaCarga: (() -> Void)?
    var cargas : Carga?
    
    @IBOutlet weak var txtCargaDinero: UITextField!
    @IBOutlet weak var txtCargaLitros: UITextField!
    
    override func viewDidLoad() {
        self.title = "Nueva Carga"
        
        txtCargaDinero.text = ""
        txtCargaLitros.text = ""
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        cargas?.totalDinero = txtCargaDinero.text
        cargas?.totalLitros = txtCargaLitros.text
        
        callbackActualizarTablaCarga!()
        self.navigationController?.popViewController(animated: true)
    }
}
