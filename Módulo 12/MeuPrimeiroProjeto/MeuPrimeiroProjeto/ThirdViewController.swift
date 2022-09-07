//
//  AppDelegate.swift
//  MeuPrimeiroProjeto
//
//  Created by Marcelo Machado on 19/01/22.
//

import UIKit


// MARK: - Aula 12
// Criado o protocol
protocol ThirdViewControllerDelegate: AnyObject {
    func notification(msg: String)
}


class ThirdViewController: UIViewController {

    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var label: UILabel!
    
    // Criada a variavel fraca como optional.
    weak var delegate: ThirdViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Mensagem a ser printada
        delegate?.notification(msg: "Cheguei na terceira View!")
    }
    
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    @IBAction func alphaLabel(_ sender: Any) {
        label.alpha = CGFloat(alphaSlider.value)
    }
    
}
