//
//  EditarAutoController.swift
//  AplicacionAutosParcial
//
//  Created by Ana Lourdes Cota Rascon on 10/12/19.
//  Copyright © 2019 Ana Lourdes Cota Rascon. All rights reserved.
//

import Foundation
import UIKit

class EditarAutoController : UIViewController {
    
    var auto : Auto?
    var callbackActualizarTabla: (() -> Void)?
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var txtEditarMatricula: UITextField!
    @IBOutlet weak var txtEditarModelo: UITextField!
    @IBOutlet weak var txtEditarMarca: UITextField!
    @IBOutlet weak var txtEditarAnio: UITextField!
    @IBOutlet weak var txtEditarConductor: UITextField!
    
    override func viewDidLoad() {
        Image.image = UIImage(named: auto?.imagen ?? "ImageCelda")
        txtEditarMatricula.text = auto?.matricula
        txtEditarModelo.text = auto?.modelo
        txtEditarMarca.text = auto?.marca
        txtEditarAnio.text = auto?.anio
        txtEditarConductor.text = auto?.conductor
        
    }
    
    @IBOutlet weak var doTapCancelar: UIButton!
    @IBOutlet weak var doTapGuardarCambios: UIButton!
    @IBOutlet weak var doTapEditar: UIButton!
    
    @IBAction func doTapEditar(_ sender: Any) {
        
        txtEditarMatricula.isEnabled = true
        txtEditarModelo.isEnabled = true
        txtEditarMarca.isEnabled = true
        txtEditarAnio.isEnabled = true
        txtEditarConductor.isEnabled = true
        doTapEditar.isHidden = true
        doTapGuardarCambios.isHidden = false
        doTapCancelar.isHidden = false
        doTapCancelar.isEnabled = true
        
    }
    @IBAction func doTapGuardarCambio(_ sender: Any) {
    }
    @IBAction func doTapCancelar(_ sender: Any) {
        
        txtEditarMatricula.isEnabled = false
        txtEditarModelo.isEnabled = false
        txtEditarMarca.isEnabled = false
        txtEditarAnio.isEnabled = false
        txtEditarConductor.isEnabled = false
        doTapEditar.isHidden = false
        doTapGuardarCambios.isHidden = true
        doTapCancelar.isHidden = true
        
    }
}
