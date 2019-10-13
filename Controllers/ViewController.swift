//
//  ViewController.swift
//  AplicacionAutosParcial
//
//  Created by Ana Lourdes Cota Rascon on 10/12/19.
//  Copyright © 2019 Ana Lourdes Cota Rascon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   

    @IBOutlet weak var autosTableView: UITableView!
    
    var autos : [Auto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Car Control"
        
        autos.append(Auto(matricula: "XVP4536", modelo: "Cruze", marca: "Chevrolet", anio: "2018", conductor: "Francisco Martinez", imagen: "ImageCelda"))
        autos.append(Auto(matricula: "WE89IOJ", modelo: "Tsuru", marca: "Nissan", anio: "2010", conductor: "Javier Martinez", imagen: "ImageCar"))
        autos.append(Auto(matricula: "BA80I9J", modelo: "Raptor", marca: "Ford", anio: "2019", conductor: "Javier Campo", imagen: "ImageCar2"))
        autos.append(Auto(matricula: "SA90I9C", modelo: "Sentra", marca: "Nissan", anio: "2015", conductor: "Javier Martinez", imagen: "ImageCar3"))
        autos.append(Auto(matricula: "HA90I9U", modelo: "Fiesta", marca: "Ford", anio: "2015", conductor: "José Gonzales", imagen: "ImageCar4"))
        autos.append(Auto(matricula: "EP90I0K", modelo: "Cavalier", marca: "Chevrolet", anio: "1994", conductor: "Antonio Gutierrez", imagen: "ImageCar5"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return autos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAuto") as? CeldaAutoController
        
        celda?.imgAuto.image = UIImage(named: autos[indexPath.row].imagen!)
        celda?.lblMatricula.text = autos[indexPath.row].matricula
        celda?.lblModelo.text = autos[indexPath.row].modelo
        celda?.lblMarca.text = autos[indexPath.row].marca
        celda?.lblAnio.text = autos[indexPath.row].anio
        celda?.lblConductor.text = autos[indexPath.row].conductor
        
        return celda!
    }
    
    func recargarTabla() {
        autosTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 155
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToAgregar" {
            let destino = segue.destination as? NuevoAutoController
            autos.append(Auto(matricula: "", modelo: "", marca: "", anio: "", conductor: "", imagen: "ImageCelda"))
            
            
            destino?.autos = autos[autos.count-1]
            
            destino?.callbackActualizarTabla = recargarTabla
        }
        if segue.identifier == "goToEditar" {
            
            let destino = segue.destination as? EditarAutoController
            
            destino?.auto = autos[autosTableView.indexPathForSelectedRow!.row]
            
            destino?.callbackActualizarTabla = recargarTabla
        }
        
    }
    


}

