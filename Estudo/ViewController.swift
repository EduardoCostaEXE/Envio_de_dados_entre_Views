//
//  ViewController.swift
//  Estudo
//
//  Created by Cabral Costa, Eduardo on 13/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    var textoDeVolta: String = ""

    @IBOutlet weak var txtFieldNome: UITextField!
    @IBOutlet weak var lblDeVolta: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDeVolta.text = textoDeVolta
    }
    @IBAction func btnProximaTela(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controllerTela2 = storyboard.instantiateViewController(withIdentifier: "ViewController2") as? Tela2ViewController
        controllerTela2!.nome = txtFieldNome.text
        
        controllerTela2?.delegate = self
        
        self.navigationController?.pushViewController(controllerTela2!, animated: true)
        //present(controllerTela2!, animated: true, completion: nil)
    }
}

extension ViewController: tela2ViewControllerDelegate{
    func devolveTexto(texto: String) {
        lblDeVolta.text = texto
    }
}
