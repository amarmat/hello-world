//
//  ViewController.swift
//  tableEjemplo
//
//  Created by Míriam Antón on 14/9/16.
//  Copyright © 2016 Alberto Martin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var miTabla: UITableView!
    
    var diasSemana: [String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return diasSemana.count //Cuantas filas va a haber
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = self.miTabla.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = self.diasSemana[indexPath.row]
        return cell //Cada una de esas filas ocupa una celda
    }
    //Para determinar en que fila le estamos dando click
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
    {
        let renglon = indexPath.row
        let seccion = indexPath.section
        
        print("Renglon: \(renglon)")
        print("Seccion: \(seccion)")
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.miTabla.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

