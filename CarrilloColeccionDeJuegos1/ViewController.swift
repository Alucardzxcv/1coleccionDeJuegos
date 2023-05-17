//
//  ViewController.swift
//  CarrilloColeccionDeJuegos1
//
//  Created by MAC41 on 17/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    var juegos : [Juego] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return juegos.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            let cell = UITableViewCell()
            let juego = juegos[indexPath.row]
            cell.textLabel?.text = juego.titulo
            cell.imageView?.image=UIImage(data: (juego.imagen!))
            return cell
        }
        

}

