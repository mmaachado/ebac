//
//  ViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Marcelo Machado on 29/12/21.
//


// Tela Principal do Aplicativo

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

// MARK: - Direciona Para a Segunda Tela
    @IBAction func button(_ sender: Any) {
//        label.text = "Hello!"
//        button.setTitle("Button", for: .normal)
        performSegue(withIdentifier: "second", sender: nil)
    }//: IBAction
    
    
// MARK: - Retorna Para Tela Principal
    @IBAction func unwindToFirst(segue: UIStoryboardSegue) {
        
    }//: IBAction
    
}

