//
//  ViewController.swift
//  Estudo
//
//  Created by Cabral Costa, Eduardo on 13/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFieldNome: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnProximaTela(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controllerTela2 = storyboard.instantiateViewController(withIdentifier: "ViewController2") as? Tela2ViewController
        controllerTela2!.nome = txtFieldNome.text
        
        self.navigationController?.pushViewController(controllerTela2!, animated: true)
        //present(controllerTela2!, animated: true, completion: nil)
    }
}

