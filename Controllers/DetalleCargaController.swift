//
//  DetalleCargaController.swift
//  AplicacionAutosParcial
//
//  Created by Ana Lourdes Cota Rascon on 10/13/19.
//  Copyright © 2019 Ana Lourdes Cota Rascon. All rights reserved.
//

import Foundation
import UIKit

class DetalleCargaController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var cargasTableView: UITableView!
    
    
    var cargas : [Carga] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detalle Cargas"
        
        cargas.append(Carga(matriculaAuto: "", totalDinero: "200", totalLitros: "10.4"))}
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cargas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaCarga = tableView.dequeueReusableCell(withIdentifier: "celdaCarga") as? CeldaCargaController
        
        celdaCarga?.lblTotalDinero.text = cargas[indexPath.row].totalDinero
        celdaCarga?.lblTotalLitros.text = cargas[indexPath.row].totalLitros
        
        
        return celdaCarga!
    }
    
    func recargarTabla() {
        cargasTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
