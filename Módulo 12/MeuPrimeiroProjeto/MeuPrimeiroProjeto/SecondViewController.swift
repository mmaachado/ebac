//
//  AppDelegate.swift
//  MeuPrimeiroProjeto
//
//  Created by Marcelo Machado on 19/01/22.
//

import Foundation
import UIKit


class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "thirdScreen" {
            let controller = segue.destination as? ThirdViewController
            
            controller?.delegate = self // aqui vamos linkar os delegates
            
            controller?.modalPresentationStyle = .fullScreen
        }
    }
}
// Extendendo o delegate
extension SecondViewController: ThirdViewControllerDelegate {
    func notification(msg: String) {
        print(msg)
    }
}
