//
//  ConfigViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Marcelo Machado on 29/12/21.
//

// Tela de configuração do app.

import UIKit

class ConfigViewController: UIViewController {

    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    
    @IBAction func alphaLabel(_ sender: Any) {
        label.alpha = CGFloat(alphaSlider.value)
    }
    
}
