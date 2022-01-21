//
//  Tela2ViewController.swift
//  Estudo
//
//  Created by Cabral Costa, Eduardo on 14/01/22.
//

import UIKit

protocol tela2ViewControllerDelegate {
    func devolveTexto(texto: String)
}

class Tela2ViewController: UIViewController {
    @IBOutlet weak var txtDeVolta: UITextField!
    
    var nome: String!

    var delegate: tela2ViewControllerDelegate?
    
    @IBOutlet weak var labelNome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNome.text = "Olá " + nome
    }
    @IBAction func btnDeVolta(_ sender: Any) {
        guard let delegate = delegate, let txtDeVoltaText = txtDeVolta.text else{
            return
        }
        delegate.devolveTexto(texto: txtDeVoltaText)
        navigationController?.popViewController(animated: true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

}
