//
//  Tela2ViewController.swift
//  Estudo
//
//  Created by Cabral Costa, Eduardo on 14/01/22.
//

import UIKit

class Tela2ViewController: UIViewController {
    
    var nome: String!

    @IBOutlet weak var labelNome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNome.text = "Olá " + nome
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

}
