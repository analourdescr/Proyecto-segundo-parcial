//
//  NuevoAutoController.swift
//  AplicacionAutosParcial
//
//  Created by Ana Lourdes Cota Rascon on 10/12/19.
//  Copyright © 2019 Ana Lourdes Cota Rascon. All rights reserved.
//

import Foundation
import UIKit

class NuevoAutoController : UIViewController {
    
    var callbackActualizarTabla: (() -> Void)?
    
    var autos : Auto?
    
    
    @IBOutlet weak var txtNuevaMatricula: UITextField!
    @IBOutlet weak var txtNuevoModelo: UITextField!
    @IBOutlet weak var txtNuevaMarca: UITextField!
    @IBOutlet weak var txtNuevoAnio: UITextField!
    @IBOutlet weak var txtNuevoConductor: UITextField!
    
    override func viewDidLoad() {
        self.title = "Nuevo"
        
        txtNuevaMatricula.text = ""
        txtNuevoModelo.text = ""
        txtNuevaMarca.text = ""
        txtNuevoAnio.text = ""
        txtNuevoConductor.text = ""
        
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        autos?.matricula = txtNuevaMatricula.text
        autos?.modelo = txtNuevoModelo.text
        autos?.marca = txtNuevaMarca.text
        autos?.anio = txtNuevoAnio.text
        autos?.conductor = txtNuevoConductor.text
        
        callbackActualizarTabla!()
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
